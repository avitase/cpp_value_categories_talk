#include <iostream>

template <char id> struct Log {
    Log() { std::cout << id << 1; }
    virtual ~Log() { std::cout << id << 2; }
};
struct A: Log<'a'> {
    int x;
    A(int x): x(x) {};
};
struct B: Log<'b'> {
    const A& a;
    B(const A& a): a(a) {}
};

int main() {
    const B& b = B{A{42}};
    std::cout << 'x';
    return b.a.x;
}
