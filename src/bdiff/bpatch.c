/*	bpatch.c
	A quick wrapper around libbdiff lbd_patch for terminal use.
	Author: William Woodruff
*/

#include <stdio.h>
#include <stdlib.h>
#include <libbdiff.h>

int main(int argc, char const *argv[])
{
	if (argc != 4)
	{
		fprintf(stderr, "%s\n", "Usage: bpatch <oldbin> <patch> <newbin>.");
		return -1;
	}

	int stat = lbd_patch(argv[1], argv[2], argv[3]);

	if (stat != LBD_OK)
	{
		fprintf(stderr, "Fatal error in libbdiff: %d\n", stat);
		return stat;
	}

	return EXIT_SUCCESS;
}
