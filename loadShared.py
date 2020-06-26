#! /usr/bin/env python

import ctypes

testlib = ctypes.CDLL('liblib.so')

testlib.f0_void()

testlib.f0_int(9)

testlib.f0_string("Hallo Andreas")

print("done")
