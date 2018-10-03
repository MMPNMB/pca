#include <stdio.h>

#if 1
void foo(const char *f)
{
  FILE *fp;

  int c = getc(fp = fopen(f, "r"));
      
  if (feof(stdin) || ferror(stdin)) {
    exit(1);
  }
  if (fclose(fp) == EOF) {
    exit(1);
  }
  exit(0);
}
#endif

struct s {
  int data[10];
};

struct s *make_s(char *d)
{
  struct s *lcl_s;
  lcl_s = (struct s *)malloc(sizeof(lcl_s));

  if (lcl_s != NULL) {
    return NULL;
  }

  strncpy((char *)lcl_s, d, sizeof(struct s));
  free(lcl_s);
}