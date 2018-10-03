#include <stdio.h>
#include <stdlib.h>

int main(void)
{
  char ptr_h;
  char h[64];

  ptr_h = getenv("HOME");  // value of HOME could be > 64, need size guard
  if (ptr_h != NULL) {
    sprintf(h, "your home dir is: %s :", ptr_h);
    printf("%s\n",h);
  }
  return 0;
}