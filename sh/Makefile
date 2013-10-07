
all:
	@echo "Try: make test"
	@false

runtests:
	./multi-sh t/twvtest.sh

runsimple:
	./multi-sh t/simple.sh

test:
	../wvtestrun $(MAKE) runtests

clean::
	rm -f *~ t/*~
