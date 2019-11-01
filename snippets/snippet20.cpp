struct S final {
    int a, b, c;
    
    S(int a, int b, int c) noexcept:
        a(a), b(b), c(c) {}

    ~S() noexcept {}
    
    auto sum() noexcept {
        return a + b + c;
    }
};

int main() {
    S s(1, 2, 3);
    return s.sum();
}
