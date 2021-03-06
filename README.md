# About
Presentation material for my iCSC 2020 talk "Demystifying Value Categories in C++". The [slides can be found here.](slides.pdf)

# Abstract
Value categories are omnipresent in today's C++ code bases. Since the advent of move semantics the field continuously becomes wider and knowing terms such as *lvalue* and *rvalue* only from compiler error messages is not enough anymore. I will present an overview about C++ value categories and decay rules, the subtle difference between pointers and references, explain why neither `std::move` moves, nor `std::forward` forwards values and talk about implication on related topics such as RVO.
