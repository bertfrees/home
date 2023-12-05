# This file contains only the code that is necessary to bootstrap the
# project. It will be updated automatically from Makefile.org. Don't
# make changes to this file directly and don't commit any changes.

SHELL := $(CURDIR)/.make/bb
.SHELLFLAGS :=

Makefile : .make/bb.edn .make/lib.clj
Makefile .make/bb.edn .make/lib.clj : Makefile.org | bin/worgle
	(require '[babashka.process :refer [exec]]  \
	         '[babashka.fs :as fs])             \
	(fs/create-dirs "$(dir $@)")                \
	(exec "bin/worgle $<")

bin/worgle : bin/% : src/worgle/%
	(require '[babashka.process :refer [exec]])  \
	(exec "cp $< $@")

src/worgle/worgle : % : %.c
	(require '[babashka.process :refer [exec sh]])                                \
	(when-not (= 0 (:exit (sh {:dir "$(dir $<)"} "$(MAKE)"))) (System/exit 1))

src/worgle/worgle.c : | src/worgle

src/worgle :
	(require '[babashka.process :refer [sh]])                                                       \
	(when-not (= 0 (:exit (sh "git clone https://github.com/PaulBatchelor/worgle.git $@")))         \
	  (System/exit 1))                                                                              \
	(System/exit (:exit (sh {:dir "$@"} "git checkout 31787a97670c3ac6c07b3583a91e19df724c8dc3")))
