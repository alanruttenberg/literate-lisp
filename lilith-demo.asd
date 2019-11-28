;;; -*- encoding:utf-8 Mode: LISP; Syntax: COMMON-LISP; Base: 10  -*- ---
;;
;; Filename: lilth.asd
;; Description: package definition of literate-lisp.
;; Author: Alan Ruttenberg <alanruttenberg@gmail.com> and Jingtao Xu <jingtaozf@gmail.com>
;; Created: 2018.02.02 19:34:18(+0800)

(in-package :cl-user)

(asdf:defsystem literate-demo
  :author "Alan Ruttenberg <alanruttenberg@gmail.com> and Xu Jingtao <jingtaozf@gmail.com>"
  :version "1"
  :licence "MIT/CC-BY"
  :description "A demo project implemented in the readme"
  :defsystem-depends-on ("lilith")
  :components ((:module :demo :pathname "./"
                        :components ((:org "readme"))))
  )
