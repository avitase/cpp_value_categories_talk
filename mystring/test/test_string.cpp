#include "catch2/catch.hpp"
#include "string.hpp"
#include <type_traits>

template <bool debug = true, typename... Ts>
[[nodiscard]] auto make_test_string(Ts... chars) {
    return mystr::string<debug>{chars...};
}

TEST_CASE("Comparison of equal string yields true", "[string]") {
    auto str1 = make_test_string<true>('f', 'o', 'o');
    auto str2 = make_test_string<true>('f', 'o', 'o');
    auto str3 = make_test_string<false>('f', 'o', 'o');
    REQUIRE(str1 == str2);
    REQUIRE(str1 == str3);
    REQUIRE(!(str1 != str2));
    REQUIRE(!(str1 != str3));
}

TEST_CASE("Comparison of unequal strings yields true", "[string]") {
    auto str1 = make_test_string<true>('f', 'o', 'o');
    auto str2 = make_test_string<true>('b', 'a', 'r');
    auto str3 = make_test_string<false>('b', 'a', 'r');
    REQUIRE(str1 != str2);
    REQUIRE(str1 != str3);
    REQUIRE(!(str1 == str2));
    REQUIRE(!(str1 == str3));
}

TEST_CASE("to_vector returns vector of letters", "[string]") {
    auto str = make_test_string('f', 'o', 'o');
    auto vec = str.to_vector();
    REQUIRE(vec.size() == 3);
    REQUIRE(vec[0] == 'f');
    REQUIRE(vec[1] == 'o');
    REQUIRE(vec[2] == 'o');
}

TEST_CASE("Default constructed string is empty", "[string]") {
    auto str = make_test_string();
    REQUIRE(str.size == 0);
}

TEST_CASE("Move constructor constructs valid string", "[string]") {
    auto str = make_test_string('f', 'o', 'o');
    auto actual = std::move(str);

    mystr::string<true> debug_str;
    debug_str.fill_debug_info();

    REQUIRE(actual == make_test_string('f', 'o', 'o'));
    REQUIRE(str == debug_str);
}

TEST_CASE("Strings can be swapped by copy", "[string]") {
    auto str1 = make_test_string('f', 'o', 'o');
    auto str2 = make_test_string('p', 'a', 'l', 'i', 'm');

    auto tmp = str1;
    str1 = str2;
    str2 = tmp;

    REQUIRE(str1 == make_test_string('p', 'a', 'l', 'i', 'm'));
    REQUIRE(str2 == make_test_string('f', 'o', 'o'));

    tmp = str1;
    str1 = str2;
    str2 = tmp;

    REQUIRE(str1 == make_test_string('f', 'o', 'o'));
    REQUIRE(str2 == make_test_string('p', 'a', 'l', 'i', 'm'));
}

TEST_CASE("Strings can be swapped by move", "[string]") {
    auto str1 = make_test_string('f', 'o', 'o');
    auto str2 = make_test_string('p', 'a', 'l', 'i', 'm');

    mystr::string<true> debug_str;
    debug_str.fill_debug_info();

    auto tmp = std::move(str1);
    str1 = std::move(str2);
    str2 = std::move(tmp);

    REQUIRE(str1 == make_test_string('p', 'a', 'l', 'i', 'm'));
    REQUIRE(str2 == make_test_string('f', 'o', 'o'));
    REQUIRE(tmp == debug_str);

    tmp = std::move(str1);
    str1 = std::move(str2);
    str2 = std::move(tmp);

    REQUIRE(str1 == make_test_string('f', 'o', 'o'));
    REQUIRE(str2 == make_test_string('p', 'a', 'l', 'i', 'm'));
    REQUIRE(tmp == debug_str);
}

TEST_CASE("String can be appended", "[string]") {
    auto str = make_test_string('f', 'o', 'o');
    str += make_test_string('b', 'a', 'r');

    REQUIRE(str == make_test_string('f', 'o', 'o', 'b', 'a', 'r'));
}

TEST_CASE("Lvalue string can be copy appended", "[string]") {
    auto str1 = make_test_string('f', 'o', 'o');
    auto str2 = str1 + make_test_string('b', 'a', 'r');

    REQUIRE(str1 == make_test_string('f', 'o', 'o'));
    REQUIRE(str2 == make_test_string('f', 'o', 'o', 'b', 'a', 'r'));
}

TEST_CASE("Rvalue string can be copy appended in debug mode", "[string]") {
    auto str1 = make_test_string('f', 'o', 'o');
    auto str2 = std::move(str1) + make_test_string('b', 'a', 'r');

    mystr::string<true> debug_str;
    debug_str.fill_debug_info();

    REQUIRE(str1 == debug_str);
    REQUIRE(str2 == make_test_string('f', 'o', 'o', 'b', 'a', 'r'));
}

TEST_CASE("Rvalue string can be copy appended when not in debug mode",
          "[string]") {
    auto str1 = make_test_string<false>('f', 'o', 'o');
    auto str2 = std::move(str1) + make_test_string<false>('b', 'a', 'r');

    REQUIRE(str1 == make_test_string('f', 'o', 'o', 'b', 'a', 'r'));
}
