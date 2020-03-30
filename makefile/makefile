func := foo
test = $(addsuffix .c,$(1))
func := $(call test, $(func))
all:
	echo $(func)
