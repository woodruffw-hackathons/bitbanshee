CC = gcc
CFLAGS = -Wall -O3 -std=c99 -Wno-attributes -Wno-maybe-uninitialized
CFLAGS += -I../libbdiff/src
LDFLAGS = -L../libbdiff -lbdiff

all:
	$(CC) $(CFLAGS) bdiff.c -o bdiff $(LDFLAGS)
	$(CC) $(CFLAGS) bpatch.c -o bpatch $(LDFLAGS)

clean:
	rm -rf bdiff
	rm -rf bpatch

.PHONY: all clean
