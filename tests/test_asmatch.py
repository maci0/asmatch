"""Unit tests for the asmatch core module."""

import unittest

from sqlmodel import Session, SQLModel, create_engine, select

from asmatch.core import (
    add_snippet,
    code_to_minhash,
    find_matches,
    get_checksum,
    get_snippet_by_checksum,
)
from asmatch.models import Snippet

# Use an in-memory SQLite database for testing
DATABASE_URL = "sqlite:///:memory:"
engine = create_engine(DATABASE_URL)


class TestAsmatch(unittest.TestCase):
    """Tests for core snippet operations."""

    def setUp(self):
        """Set up a clean database for each test."""
        SQLModel.metadata.create_all(engine)
        self.session = Session(engine)

    def tearDown(self):
        """Clean up the database after each test."""
        self.session.close()
        SQLModel.metadata.drop_all(engine)

    def test_add_and_get_snippet(self):
        """Test adding a snippet and retrieving it by its checksum."""
        name = "test_snippet"
        code = "MOV EAX, 1"
        checksum = get_checksum(code)

        add_snippet(self.session, name, code)

        retrieved = get_snippet_by_checksum(self.session, checksum)
        self.assertIsNotNone(retrieved)
        self.assertIn(name, retrieved.name_list)
        self.assertEqual(retrieved.code, code)
        self.assertEqual(retrieved.checksum, checksum)

    def test_add_alias_to_existing_code(self):
        """Test that adding a snippet with identical code adds an alias."""
        name1 = "snippet_one"
        name2 = "snippet_two"
        code = "MOV EBX, 2"

        add_snippet(self.session, name1, code)
        result = add_snippet(self.session, name2, code)
        self.assertIsNotNone(result)

        snippets = self.session.exec(select(Snippet)).all()
        self.assertEqual(len(snippets), 1)
        self.assertIn(name1, snippets[0].name_list)
        self.assertIn(name2, snippets[0].name_list)

    def test_normalization(self):
        """Test the normalization function."""
        code1 = "MOV EAX, [ESP+4] ; load first argument"
        code2 = "mov eax, [esp+4]"
        minhash1 = code_to_minhash(code1)
        minhash2 = code_to_minhash(code2)
        self.assertGreater(minhash1.jaccard(minhash2), 0.99)

    def test_find_matches(self):
        """Test finding top matches for a query."""
        snippet1_name = "string_copy"
        snippet1_code = """
        string_copy:
            lodsb
            stosb
            test al, al
            jnz string_copy
        """
        snippet1_checksum = get_checksum(snippet1_code)
        add_snippet(self.session, snippet1_name, snippet1_code)

        snippet2_name = "sum_array"
        snippet2_code = """
        sum_loop:
            add eax, [esi]
            add esi, 4
            dec ecx
            jnz sum_loop
        """
        add_snippet(self.session, snippet2_name, snippet2_code)

        query = """
        copy_loop:
            lodsb
            stosb
            test al, al
            jnz copy_loop
        """
        _num_candidates, matches = find_matches(self.session, query, top_n=1)

        self.assertEqual(len(matches), 1)
        # The key of the match should be the checksum
        self.assertEqual(matches[0][0].checksum, snippet1_checksum)

    def test_large_and_unicode_snippets(self):
        """Ensure very large and unicode-heavy snippets are handled."""
        large_code = "\n".join(["MOV EAX, EBX"] * 1000)
        unicode_code = "MOV EAX, 1 ; π≈3.14"

        add_snippet(self.session, "big", large_code)
        add_snippet(self.session, "unicode", unicode_code)

        checksum_large = get_checksum(large_code)
        checksum_unicode = get_checksum(unicode_code)

        self.assertIsNotNone(get_snippet_by_checksum(self.session, checksum_large))
        self.assertIsNotNone(get_snippet_by_checksum(self.session, checksum_unicode))


if __name__ == "__main__":
    unittest.main()
