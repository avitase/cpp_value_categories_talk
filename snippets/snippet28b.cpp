#include <iostream>

struct S { 
    int x;
};

void swap(S& a, S& b) {
    S tmp = a;
    a = b;
    b = tmp;
}

int main() {
    S a{1}; S b{2};
    swap(a, b);
    std::cout << a.x << b.x;
}
