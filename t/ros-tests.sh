#!/bin/bash
cd `dirname $0`
ros run -e '(pushnew :literate-test *features*)'\
    -e '(setq *load-verbose* t)'\
    -e '(load "../literate-lisp.asd")'\
    -e '(ql:quickload :fiveam)'\
    -e '(asdf::oos (quote asdf:load-op) :literate-lisp)'\
    -e '(load "../literate-lisp.org")'\
    -e '(if (not (literate-lisp::run-test))(uiop:quit 1))'\
    -e '(uiop:quit 0)'
