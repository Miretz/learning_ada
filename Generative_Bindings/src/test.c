#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#include "test.h"

struct test {
  char name[80];
  char address[120];
};

static size_t
strlcpy(char *dst, const char *src, size_t dstsize)
{
  size_t len = strlen(src);
  if (dstsize) {
    size_t bl = (len < dstsize - 1 ? len : dstsize - 1);
    ((char*)memcpy(dst, src, bl))[bl] = 0;
  }
  return len;
}

struct test * test_create(void)
{
  return malloc (sizeof (struct test));
}

void test_destroy(struct test *t)
{
  if (t != NULL) {
    free(t);
  }
}

void test_reset(struct test *t)
{
  t->name[0] = '\0';
  t->address[0] = '\0';
}

void test_set_name(struct test *t, char *name)
{
  strlcpy(t->name, name, sizeof(t->name));
}

void test_set_address(struct test *t, char *address)
{
  strlcpy(t->address, address, sizeof(t->address));
}

void test_display(const struct test *t)
{
  printf("Name:      %s\n", t->name);
  printf("Address:   %s\n", t->address);
}
