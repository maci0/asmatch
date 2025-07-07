
# models.py
import json
import pickle
from typing import List

from datasketch import MinHash
from sqlmodel import Field, Session, SQLModel, select


class Snippet(SQLModel, table=True):
    checksum: str = Field(primary_key=True)
    names: str  # JSON-encoded list of strings
    code: str
    minhash: bytes

    @property
    def name_list(self) -> List[str]:
        return json.loads(self.names)

    @classmethod
    def get_by_checksum(cls, session: Session, checksum: str) -> "Snippet":
        return session.get(cls, checksum)

    @classmethod
    def get_by_name(cls, session: Session, name: str) -> "Snippet":
        # This is more complex now, as we need to search within a JSON array.
        # For simplicity, we'll iterate, but for performance, a different DB structure would be better.
        snippets = session.exec(select(cls)).all()
        for snippet in snippets:
            if name in snippet.name_list:
                return snippet
        return None

    @classmethod
    def get_all(cls, session: Session) -> list["Snippet"]:
        return session.exec(select(cls)).all()

    def get_minhash_obj(self) -> MinHash:
        return pickle.loads(self.minhash)
