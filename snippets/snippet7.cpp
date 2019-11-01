struct S final {
    int x;
    explicit S(int x) noexcept;
    S(const S&) noexcept;
    S(S&&) noexcept;
    ~S() noexcept;
};

S f() {
    return S{42};
}

auto g() {
    auto s = f();
    return s.x;
}
