struct S {
    int x;
    S(int x): x(x) {}
    S(const S &other): x(other.x) {}
    ~S() { /* non-trivial */ }
};

S f() {
    return S{42};
}

auto g() {
    auto s = f();
    return s.x;
}