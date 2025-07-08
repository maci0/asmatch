"""Utility script to generate random assembly files for testing."""

import os
import random
import textwrap

# --- Configuration ---
NUM_FILES = 1000
DATA_DIR = "data"

# --- Helper Data ---
REGISTERS = ["eax", "ebx", "ecx", "edx", "esi", "edi"]
ARITHMETIC_OPS = ["add", "sub", "and", "or", "xor"]
STACK_OPS = ["push", "pop"]
DATA_OPS = ["mov"]
CONDITIONAL_JUMPS = ["je", "jne", "jg", "jl", "jge", "jle"]

# --- Code Block Generators ---


def generate_arithmetic_block(num_instructions: int) -> list[str]:
    """Generates a block of random arithmetic operations."""
    lines = ["; --- Arithmetic Block ---"]
    for _ in range(num_instructions):
        op = random.choice(ARITHMETIC_OPS)
        reg1, reg2 = random.sample(REGISTERS, 2)
        val = random.randint(1, 1000)
        lines.append(f"    {op} {reg1}, {reg2}")
        lines.append(f"    {op} {reg2}, {val}")
    return lines


def generate_stack_block(num_instructions: int) -> list[str]:
    """Generates a block of random stack operations."""
    lines = ["; --- Stack Manipulation ---"]
    for _ in range(num_instructions):
        op = random.choice(STACK_OPS)
        reg = random.choice(REGISTERS)
        lines.append(f"    {op} {reg}")
    return lines


def generate_data_block(num_instructions: int) -> list[str]:
    """Generates a block of random data movement operations."""
    lines = ["; --- Data Movement ---"]
    for _ in range(num_instructions):
        reg1, reg2 = random.sample(REGISTERS, 2)
        val = random.randint(1, 1000)
        lines.append(f"    mov {reg1}, {reg2}")
        lines.append(f"    mov {reg2}, {val}")
    return lines


def generate_conditional_block(label_id: int) -> list[str]:
    """Generates a conditional jump block."""
    lines = ["; --- Conditional Block ---"]
    reg1, reg2 = random.sample(REGISTERS, 2)
    jump_op = random.choice(CONDITIONAL_JUMPS)
    lines.append(f"    cmp {reg1}, {reg2}")
    lines.append(f"    {jump_op} .label_{label_id}")
    lines.extend(generate_arithmetic_block(random.randint(1, 2)))
    lines.append(f".label_{label_id}:")
    return lines


# --- Main Generation Logic ---
def generate_files():
    """Generate random assembly files in DATA_DIR."""
    if not os.path.exists(DATA_DIR):
        os.makedirs(DATA_DIR)

    # Clean out old generated files
    for f in os.listdir(DATA_DIR):
        if f.startswith("generated_func_"):
            os.remove(os.path.join(DATA_DIR, f))

    for i in range(NUM_FILES):
        name = f"generated_func_{i:04d}"

        # --- Build the function body ---
        body = []
        num_blocks = random.randint(2, 5)

        for j in range(num_blocks):
            block_type = random.choice(
                [
                    generate_arithmetic_block,
                    generate_stack_block,
                    generate_data_block,
                    generate_conditional_block,
                ]
            )
            if block_type is generate_conditional_block:
                body.extend(block_type(f"{i}_{j}"))
            else:
                body.extend(block_type(random.randint(1, 3)))
            body.append("")  # Add a blank line for spacing

        # --- Assemble the final file content ---
        content = (
            [
                f"; Function: {name}",
                "; Description: A highly randomized, auto-generated function.",
                "section .text",
                f"global {name}",
                f"{name}:",
                "    push    ebp",
                "    mov     ebp, esp",
            ]
            + body
            + [
                "    mov     esp, ebp",
                "    pop     ebp",
                "    ret",
            ]
        )

        # Write the file
        file_path = os.path.join(DATA_DIR, f"{name}.asm")
        with open(file_path, "w", encoding="utf-8") as f:
            f.write("\n".join(textwrap.indent(line, "    ") for line in content))

    print(
        f"Successfully generated {NUM_FILES} new, more random assembly files in '{DATA_DIR}/'"
    )


if __name__ == "__main__":
    generate_files()
