<Compilation failed>
# Compiler exited with result code 1
Standard error:
[1m<source>:12:10: [0m[0;1;31merror: [0m[1mno viable conversion from returned value of type 'int' to function return type 'B'[0m
  return 42;
[0;1;32m         ^~
[0m[1m<source>:17:12: [0m[0;1;30mnote: [0min instantiation of function template specialization 'init<B>' requested here[0m
  auto y = init<B>().x; // error: no viable conversion from int to return type 'B'
[0;1;32m           ^
[0m[1m<source>:6:8: [0m[0;1;30mnote: [0mcandidate constructor (the implicit copy constructor) not viable: no known conversion from 'int' to 'const B &' for 1st argument[0m
struct B : A {
[0;1;32m       ^
[0m[1m<source>:6:8: [0m[0;1;30mnote: [0mcandidate constructor (the implicit move constructor) not viable: no known conversion from 'int' to 'B &&' for 1st argument[0m
struct B : A {
[0;1;32m       ^
[0m1 error generated.
