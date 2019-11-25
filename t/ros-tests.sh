#!/bin/bash
ros run -e '(pushnew :literate-test *features*)'\
    -e '(setq *load-verbose* t)'\
    -e '(load "~/repos/literate-lisp/literate-lisp.asd")'\
    -e '(asdf::oos (quote asdf:load-op) :literate-lisp)'\
    -e '(load "~/repos/literate-lisp/t/tests.org")'\
    -e '(if (not (literate-lisp::run-test))(uiop:quit 1))'\
    -e '(uiop:quit 0)'
