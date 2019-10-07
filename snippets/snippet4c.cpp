struct S {
    S() = default;
    S(const S &) = delete;
    S &operator=(const S &) = delete;
};

S f() { return S{}; }

int main() {
    S s(S{});
    auto s1 = f();
    auto s2{f()};
}
