#include "foo-inline.h"

typedef int(*fn_handler)(int, int);
typedef struct {
  fn_handler handler;
} t_str;

int main(){
  // A a;
  int sum = 0;
  int t1 = 1;

  t_str str {
    add
  };

  sum = str.handler(t1, sum);
  return sum;
}
