#!/bin/bash
cd `dirname $0`
ros --quiet run -e '(pushnew :literate-test *features*)'\
    -e '(load "../literate-lisp.asd")'\
    -e '(ql:quickload :fiveam)'\
    -e '(asdf::oos (quote asdf:load-op) :literate-lisp)'\
    -e '(push :literate-test *features*)'\
    -e '(compile-file "../literate-lisp.org")'\
    -e '(load "../literate-lisp.org")'\
    -e '(if (not (literate-lisp::run-test))(uiop:quit 1))'\
    -e '(uiop:quit 0)'
