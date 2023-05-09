int main() {
  __asm__ __volatile__ ("nop");
  __asm__ __volatile__ ("nop");
  __asm__ __volatile__ ("nop");
  __asm__ __volatile__ ("nop");
  __asm__ __volatile__ ("nop");
  __asm__ __volatile__ ("nop");
  __asm__ __volatile__ ("nop");
  __asm__ __volatile__ ("nop");
  __asm__ __volatile__ ("nop");
  __asm__ __volatile__ ("nop");
  __asm__ __volatile__ ("nop"); 
  __asm__ __volatile__ ("nop");
  __asm__ __volatile__ ("nop");
  __asm__ __volatile__ ("nop");
  __asm__ __volatile__ ("nop");

  __asm__ __volatile__ (
      "li $s0, 10\n\t"    // Load 10 into $s0
      "li $s1, 20\n\t"    // Load 20 into $s1
      "mult $s0, $s1\n\t" // Multiply $s0 by $s1
      "mflo $t0\n\t"      // Move the result into $t0
      "nop\n\t"           // Placeholder for any additional instructions
  );    
  return 0;
}
