"""Database engine and helpers."""

import os
from sqlmodel import SQLModel, create_engine

# Default to assembly.db, but allow overriding for testing
DATABASE_URL = os.environ.get("DATABASE_URL", "sqlite:///assembly.db")

engine = create_engine(DATABASE_URL, echo=False)

def create_db_and_tables() -> None:
    """Create database tables if they do not already exist."""
    SQLModel.metadata.create_all(engine)

