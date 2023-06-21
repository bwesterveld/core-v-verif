int main() {
    int loop_counter = 5;
    int counter = 0;

    // __asm__ __volatile__ (
    //     "nop\n"
    //     "nop\n"
    //     "nop\n"
    //     "nop\n"
    //     "nop\n"
    //     "nop\n"
    //     "nop\n"
    //     "nop\n"
    //     "nop\n"
    //     "nop\n"
    //     "nop\n"
    //     "nop\n"
    //     "nop\n"
    //     "nop\n"
    //     "nop\n"
    //     "li x18, %0\n"       // Load loop_counter value into x18
    //     "li x19, %1\n"       // Load counter value into x19
    //     "1:\n"
    //     "nop\n"
    //     "nop\n"
    //     "addi x19, x19, 1\n"  // Increment counter
    //     "addi x18, x18, -1\n" // Decrement loop_counter
    //     "nop\n"
    //     "nop\n"
    //     "bnez x18, 1b\n"     // Branch to label 1 if loop_counter is not zero
    //     "nop\n"
    //     "nop\n"
    //     "nop\n"
    //     "nop\n"
    //     "nop\n"
    //     :
    //     : "i"(loop_counter), "i"(counter)
    //     : "x18", "x19"
    // );

    asm volatile (
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "j my_label\n"     // Jump to the label my_label
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "my_label:\n"      // Label for the starting point of the code
        "nop\n"            // A placeholder instruction to ensure the label is not the last instruction
        "nop\n"
        "nop\n"
        "nop\n"
    );


    return 0;
}