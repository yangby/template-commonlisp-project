#|
Copyright (C) 2018 YangBy <yby@yangby.org>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
|#

(defpackage fibonacci-test
  (:use :cl
        :fib
        :5am)
  (:export :fibonacci-suite))

(in-package :fibonacci-test)

(5am:def-suite fibonacci-suite :description "A suite for fibonacci numbers")
(5am:in-suite fibonacci-suite)

(5am:test fibonacci
  "Test for fibonacci numbers."
  (is (= 0 (fibonacci 0)) "fibonacci(0) = 0")
  (is (= 1 (fibonacci 2)) "fibonacci(2) = 1")
  (is (= 3 (fibonacci 4)) "fibonacci(4) = 3")
  (is (= 21 (fibonacci 8)) "fibonacci(8) = 21")
  (is (= 987 (fibonacci 16)) "fibonacci(16) = 987")
  (is (= 2178309 (fibonacci 32)) "fibonacci(32) = 2178309"))
