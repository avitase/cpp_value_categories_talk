struct A {
    int x;
    A(int x, int y = 0) : x(x + y) {}
};

struct B {
    int x;
    explicit B(int x, int y = 0) : x(x + y) {}
};

template <typename T>
T init() { return 42; }

int main() {
  auto x = init<A>().x;
  auto y = init<B>().x; 
}
