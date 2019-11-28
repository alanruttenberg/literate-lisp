;;; -*- encoding:utf-8 Mode: LISP; Syntax: COMMON-LISP; Base: 10  -*- ---
;;
;; Filename: lilth.asd
;; Description: package definition of literate-lisp.
;; Author: Alan Ruttenberg <alanruttenberg@gmail.com> and Jingtao Xu <jingtaozf@gmail.com>
;; Created: 2018.02.02 19:34:18(+0800)

(in-package :cl-user)

(asdf:defsystem lilith
  :author "Alan Ruttenberg <alanruttenberg@gmail.com> and Xu Jingtao <jingtaozf@gmail.com>"
  :licence "MIT/CC-BY"
  :version "1"
  :description "Literate programming for common lisp authored in an org file."
  :components ((:module basics :pathname "./"
                        :components ((:file "lilith"))
                        :serial t)
               )
  :depends-on (cl-ppcre))
