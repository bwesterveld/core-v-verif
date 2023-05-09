int main() {

  int a = 10;
  int b = 20;
  int result;

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



  // __asm__ __volatile__ ("lui %0, %1" : "=r" (rd) : "i" (imm));
  __asm__ __volatile__ ("mult %1, %2\n\t" : : "r" (a), "r" (b));


  return 0;
}
