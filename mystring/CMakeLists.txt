cmake_minimum_required(VERSION 3.13)

project(mystring)

if (NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
    message(STATUS "Setting build type to 'Release' as none was specified.")
    set(CMAKE_BUILD_TYPE Release CACHE STRING "Choose the type of build." FORCE)
    set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "Debug" "Release")
endif ()

find_program(CCACHE ccache)
if (CCACHE)
    message("using ccache")
    set(CMAKE_CXX_COMPILER_LAUNCHER ${CCACHE})
else ()
    message("ccache not found cannot use")
endif ()

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

option(WARNINGS_AS_ERRORS "Treat compiler warnings as errors" TRUE)
include(CompilerWarnings.cmake)
add_compile_options("${PROJECT_WARNINGS}")

if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU" OR CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
    set(SANITIZERS "")

    option(ENABLE_SANITIZER_ADDRESS "Enable address sanitizer" FALSE)
    if (ENABLE_SANITIZER_ADDRESS)
        list(APPEND SANITIZERS "address")
    endif ()

    option(ENABLE_SANITIZER_MEMORY "Enable memory sanitizer" FALSE)
    if (ENABLE_SANITIZER_MEMORY)
        list(APPEND SANITIZERS "memory")
    endif ()

    option(ENABLE_SANITIZER_UNDEFINED_BEHAVIOR "Enable undefined behavior sanitizer" FALSE)
    if (ENABLE_SANITIZER_UNDEFINED_BEHAVIOR)
        list(APPEND SANITIZERS "undefined")
    endif ()

    list(JOIN SANITIZERS "," LIST_OF_SANITIZERS)
endif ()

if (LIST_OF_SANITIZERS)
    if (NOT "${LIST_OF_SANITIZERS}" STREQUAL "")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=${LIST_OF_SANITIZERS}")
    endif ()
endif ()

option(ENABLE_CLANG_TIDY "Enable static analysis with clang-tidy" OFF)
if (ENABLE_CLANG_TIDY)
    find_program(CLANGTIDY clang-tidy)
    if (CLANGTIDY)
        set(CMAKE_CXX_CLANG_TIDY ${CLANGTIDY})
    else ()
        message(SEND_ERROR "clang-tidy requested but executable not found")
    endif ()
endif ()

include_directories("include")
include_directories("lib/Catch2/single_include")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(runAllUnitTests test/runAllUnitTests.cxx test/test_string.cpp)