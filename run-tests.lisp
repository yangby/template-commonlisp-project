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

(ql:quickload "fiveam" :silent t)
(ql:quickload "uiop" :silent t)
(ql:quickload "asdf" :silent t)

(push (uiop:getcwd) asdf:*central-registry*)
(ql:quickload "fibonacci-test")

(let ((results (5am:run 'fibonacci-test:fibonacci-suite)))
  (5am:explain! results)
  (uiop:quit (if (eq (5am:results-status results) t) 0 1)))
