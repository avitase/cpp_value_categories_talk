#include <iostream>

struct S { 
    int x;
    S(int x): x(x) { std::cout << 'a'; }
    S(const S& other): x(other.x) { std::cout << 'b'; }
    S& operator=(const S& other) { x = other.x; std::cout << 'c'; return *this; }
};

void swap(S*& a, S*& b) {
    S* tmp = a;
    a = b;
    b = tmp;
}

int main() {
    S a{1}; S b{2}; S* a_ptr = &a; S* b_ptr = &b;
    swap(a_ptr, b_ptr);
    std::cout << a_ptr->x << b_ptr->x;
}
