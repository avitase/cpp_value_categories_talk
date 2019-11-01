struct S {
    S() noexcept;
    S(const S&) noexcept;
    S(const S&&) noexcept;
    ~S() noexcept;
};

S f1(S s) { return s; }
S f2(S& s) { return s; }
S f3(const S& s) { return s; }
