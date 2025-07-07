# models.py
import pickle
from typing import Optional
from sqlmodel import Field, SQLModel, Session, select
from datasketch import MinHash

class Snippet(SQLModel, table=True):
    checksum: str = Field(primary_key=True)
    name: str = Field(index=True, unique=True)
    code: str
    minhash: bytes

    @classmethod
    def get_by_checksum(cls, session: Session, checksum: str) -> "Snippet":
        return session.get(cls, checksum)

    @classmethod
    def get_by_name(cls, session: Session, name: str) -> "Snippet":
        return session.exec(select(cls).where(cls.name == name)).first()

    @classmethod
    def get_all(cls, session: Session) -> list["Snippet"]:
        return session.exec(select(cls)).all()

    def get_minhash_obj(self) -> MinHash:
        return pickle.loads(self.minhash)