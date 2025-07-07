
"""Database models used by asmatch."""

import json
import pickle
from typing import List

from datasketch import MinHash
from sqlmodel import Field, Session, SQLModel, select


class Snippet(SQLModel, table=True):
    """Model representing a stored assembly snippet."""

    checksum: str = Field(primary_key=True)
    names: str  # JSON-encoded list of strings
    code: str
    minhash: bytes

    @property
    def name_list(self) -> List[str]:
        """Return the list of alias names for the snippet."""
        return json.loads(self.names)

    @classmethod
    def get_by_checksum(cls, session: Session, checksum: str) -> "Snippet":
        """Retrieve a snippet by its checksum."""
        return session.get(cls, checksum)

    @classmethod
    def get_by_name(cls, session: Session, name: str) -> "Snippet":
        """Return the snippet containing the given name, if any."""
        snippets = session.exec(select(cls)).all()
        for snippet in snippets:
            if name in snippet.name_list:
                return snippet
        return None

    @classmethod
    def get_all(cls, session: Session) -> list["Snippet"]:
        """Return all snippets in the database."""
        return session.exec(select(cls)).all()

    def get_minhash_obj(self) -> MinHash:
        """Return the stored MinHash object for this snippet."""
        return pickle.loads(self.minhash)
