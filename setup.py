
from setuptools import setup, find_packages

setup(
    name="asmatch",
    version="0.1.0",
    packages=find_packages(where="src"),
    package_dir={"": "src"},
    install_requires=[
        "sqlmodel",
        "pygments",
        "datasketch",
        "rapidfuzz",
    ],
    entry_points={
        "console_scripts": [
            "asmatch=asmatch.cli:main",
        ],
    },
)
