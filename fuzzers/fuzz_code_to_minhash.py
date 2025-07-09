#!/usr/bin/env python3
# pylint: disable=duplicate-code
"""A fuzzer for the code_to_minhash function."""

import sys

import atheris

# This is needed to allow the fuzzer to import the target module
# and any dependencies it has.
with atheris.instrument_imports():
    from asmatch.core import code_to_minhash


def test_one_input(data):
    """The entry point for the fuzzer."""
    try:
        # Attempt to decode the data as UTF-8. If it fails, it will
        # raise a UnicodeDecodeError, which is a valid bug to find.
        fdp = atheris.FuzzedDataProvider(data)
        string_data = fdp.ConsumeUnicode(fdp.remaining_bytes())

        # Call the target function with both normalization options
        code_to_minhash(string_data, normalize=True)
        code_to_minhash(string_data, normalize=False)
    except UnicodeDecodeError:
        # This is an expected exception when the input is not valid UTF-8.
        # We can ignore it and let the fuzzer continue.
        pass


def main():
    """Main function to run the fuzzer."""
    # atheris.instrument_all() is not used here because we are using
    # with atheris.instrument_imports() instead.
    atheris.Setup(sys.argv, test_one_input)
    atheris.Fuzz()


if __name__ == "__main__":
    main()
