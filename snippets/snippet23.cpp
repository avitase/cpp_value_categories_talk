struct S final {
    S() noexcept;
    S(const S&) noexcept;
    S(S&&) noexcept;
    ~S() noexcept;
};

S f() {
    S s;
    auto& t = s;
    return t;
}
