"""Setup script for asmatch package."""

from setuptools import find_packages, setup

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
        "tomli",
        "tomli_w",
    ],
    extras_require={
        "dev": ["ruff", "black", "unittest-xml-reporting"],
    },
    entry_points={
        "console_scripts": [
            "asmatch=asmatch.cli:main",
        ],
    },
)
