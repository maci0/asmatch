
# database.py
from sqlmodel import create_engine, SQLModel

DATABASE_URL = "sqlite:///assembly.db"
engine = create_engine(DATABASE_URL, echo=False)

def create_db_and_tables():
    SQLModel.metadata.create_all(engine)
