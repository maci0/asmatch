from contextlib import contextmanager

from sqlmodel import Session, SQLModel, create_engine

@contextmanager
def temp_session():
    engine = create_engine("sqlite:///:memory:")
    SQLModel.metadata.create_all(engine)
    session = Session(engine)
    try:
        yield session
    finally:
        session.close()
        SQLModel.metadata.drop_all(engine)
