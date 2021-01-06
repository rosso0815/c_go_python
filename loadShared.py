#! /usr/bin/env python3

import ctypes

testlib = ctypes.CDLL('./liblib.so')

testlib.f0_void()

testlib.f0_int(9)

testlib.f0_string("Hallo Andreas")

print("done")
