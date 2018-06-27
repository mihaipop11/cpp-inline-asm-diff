## Source code

```
// foo.h
int add(int a, int b);

// foo.cpp
#include "foo.h"

int add(int a, int b) {
   return (a + b);
}

// main.cpp
#include "foo.h"

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
```


```
// foo-inline.h
inline int add(int a, int b) {
   return (a + b);
}

// main-inline.cpp
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
```

## Compilation  step
```
// inline case
g++ -O2 main-inline.cpp -std=c++11 -o main
objdump -M intel -d main-inline > main-inline.s

// non-inline case
g++ -O2 main.cpp foo.cpp -std=c++11 -o main
objdump -M intel -d main > main.s
```

## Comparing results
```
meld main.s main-inline.s 
```

```
// main-inline.s

00000000004003e0 <main>:
  4003e0:	b8 01 00 00 00       	mov    eax,0x1
  4003e5:	c3                   	ret    
  4003e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4003ed:	00 00 00
  
// main.s

00000000004004f0 <_Z3addii>:
  4004f0:	8d 04 37             	lea    eax,[rdi+rsi*1]
  4004f3:	c3                   	ret    
  4004f4:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4004fb:	00 00 00 
  4004fe:	66 90                	xchg   ax,ax
  
00000000004003e0 <main>:
  4003e0:	31 f6                	xor    esi,esi
  4003e2:	bf 01 00 00 00       	mov    edi,0x1
  4003e7:	e9 04 01 00 00       	jmp    4004f0 <_Z3addii>
  4003ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
```
