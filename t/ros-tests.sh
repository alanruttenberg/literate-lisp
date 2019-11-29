#!/bin/bash
cd `dirname $0`
ros --quiet run -e '(pushnew :lilith-test *features*)'\
    -e '(load "../lilith.asd")'\
    -e '(ql:quickload :fiveam)'\
    -e '(asdf::oos (quote asdf:load-op) :lilith)'\
    -e '(push :literate-test *features*)'\
    -e '(compile-file "../lilith.org")'\
    -e '(load "../lilith.org")'\
    -e '(if (not (lilith::run-test))(uiop:quit 1))'\
    -e '(uiop:quit 0)'
