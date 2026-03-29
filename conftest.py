import pytest
import talon


@pytest.fixture(scope="session", autouse=True)
def init_talon():
    talon.init()
