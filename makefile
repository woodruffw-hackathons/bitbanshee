all: libbdiff bdiff

libbdiff:
	$(MAKE) -C ./src/libbdiff

bdiff:
	$(MAKE) -C ./src/bdiff

run: all
	cd ./src/server && ruby ./server.rb -p 8080

clean:
	$(MAKE) clean -C ./src/libbdiff
	$(MAKE) clean -C ./src/bdiff
	rm -rf ./src/server/*bin

.PHONY: all libbdiff clean
