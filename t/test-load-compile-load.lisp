;; expects to be run in this directory
;; for bare SBCL I use: sbcl --load ~/quicklisp/setup.lisp --load test-load-compile-load.lisp
;; for bare ABCL I use: java -jar ~/repos/abcl/dist/abcl-aio.jar --noinit --load ~/quicklisp/setup.lisp --load test-load-compile-load.lisp
(in-package :cl-user)
#-QUICKLISP (error "quicklisp needs to be available")
(require :asdf)
(load "../literate-lisp.asd")
(asdf:oos 'asdf:load-op 'literate-lisp)
(fmakunbound 'boozle)
(load "load-compile-load.org")
(assert (eq (boozle) :biz) () "Load didn't work")
(fmakunbound 'boozle)
(compile-file "load-compile-load.org")
(assert (not (fboundp 'boozle)) () "Compile evaluated!")
(load (compile-file-pathname "load-compile-load.org"))
(assert (eq (boozle) :biz) () "Load didn't work")
(print :passed)
