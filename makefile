all: libbdiff bdiff

libbdiff:
	$(MAKE) -C ./src/libbdiff

bdiff:
	$(MAKE) -C ./src/bdiff

clean:
	$(MAKE) clean -C ./src/libbdiff
	$(MAKE) clean -C ./src/bdiff

.PHONY: all libbdiff clean
