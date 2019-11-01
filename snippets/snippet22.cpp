struct S {
    int x;
};

auto f() { S s{.x=42}; return s; }

int main() {
    S& s = f();
    return s.x;
}
