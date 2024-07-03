#!/usr/bin/env bash

source ./src/script.sh

assert_equals() {
    expected="$1"
    actual="$2"
    if [ "$expected" == "$actual" ]; then
        echo "Test passed"
    else
        echo "Test failed: expected '$expected', got '$actual'"
        exit 1
    fi
}

test_hello_world() {
    result=$(hello_world)
    assert_equals "Hello, World!" "$result"
}

test_add_numbers() {
    result=$(add_numbers 2 3)
    assert_equals "5" "$result"
}

test_hello_world
test_add_numbers

echo "All tests passed"