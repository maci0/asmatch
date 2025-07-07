

import random
import os

# --- Configuration ---
NUM_FILES = 1000
DATA_DIR = "data"

# --- Helper Data ---
REGISTERS = ["eax", "ebx", "ecx", "edx", "esi", "edi"]
INSTRUCTIONS = [
    "add {reg1}, {reg2}",
    "sub {reg1}, {val1}",
    "xor {reg2}, {reg2}",
    "mov {reg1}, {val2}",
    "and {reg1}, {val1}",
    "or {reg1}, {val2}",
    "mul ecx",
    "div ebx",
    "inc {reg1}",
    "dec {reg2}",
    "push {reg1}",
    "pop {reg2}",
]
COMMENTS = [
    "; A random comment",
    "; TODO: Optimize this",
    "; This is a critical section",
    "; Magic number, do not touch",
    "", # No comment
]

# --- Main Generation Logic ---
def generate_files():
    if not os.path.exists(DATA_DIR):
        os.makedirs(DATA_DIR)

    # Clean out old generated files
    for f in os.listdir(DATA_DIR):
        if f.startswith("generated_func_"):
            os.remove(os.path.join(DATA_DIR, f))

    for i in range(NUM_FILES):
        # Choose random registers
        reg1, reg2 = random.sample(REGISTERS, 2)
        
        # Generate a unique function name
        name = f"generated_func_{i:04d}"
        
        # Generate random values
        val1 = random.randint(1, 1000)
        val2 = random.randint(1, 1000)
        
        # --- Build the function body ---
        body = []
        num_instructions = random.randint(5, 20)
        
        for _ in range(num_instructions):
            # Choose a random instruction and format it
            instruction_template = random.choice(INSTRUCTIONS)
            instruction = instruction_template.format(reg1=reg1, reg2=reg2, val1=val1, val2=val2)
            
            # Add a random comment
            comment = random.choice(COMMENTS)
            
            body.append(f"    {instruction.ljust(25)} {comment}")

        # --- Optional Loop ---
        if random.random() > 0.5: # 50% chance of having a loop
            loop_count = random.randint(3, 10)
            loop_body = []
            for _ in range(random.randint(1, 3)): # 1 to 3 instructions in the loop
                reg1, reg2 = random.sample(REGISTERS, 2)
                val1 = random.randint(1, 100)
                instruction_template = random.choice(INSTRUCTIONS)
                instruction = instruction_template.format(reg1=reg1, reg2=reg2, val1=val1, val2=val1)
                loop_body.append(f"        {instruction}")

            loop_code = [
                f"    mov ecx, {loop_count}",
                f".loop_{i}:",
            ] + loop_body + [
                "        dec ecx",
                f"        jnz .loop_{i}",
            ]
            body.extend(loop_code)

        # --- Assemble the final file content ---
        content = [
            f"; Function: {name}",
            f"; Description: A randomly generated function.",
            "section .text",
            f"global {name}",
            f"{name}:",
            "    push    ebp",
            "    mov     ebp, esp",
        ] + body + [
            "    mov     esp, ebp",
            "    pop     ebp",
            "    ret",
        ]
        
        # Write the file
        file_path = os.path.join(DATA_DIR, f"{name}.asm")
        with open(file_path, 'w') as f:
            f.write("\n".join(content))
            
    print(f"Successfully generated {NUM_FILES} new, more random assembly files in '{DATA_DIR}/'")

if __name__ == "__main__":
    generate_files()

