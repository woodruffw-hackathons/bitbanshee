/*	bdiff.c
	A quick wrapper around libbdiff's lbd_diff for terminal use.
	Author: William Woodruff
*/

#include <stdio.h>
#include <stdlib.h>
#include <libbdiff.h>

int main(int argc, char const *argv[])
{
	if (argc != 4)
	{
		fprintf(stderr, "%s\n", "Usage: bdiff <oldbin> <newbin> <patch>.");
		return -1;
	}

	int stat = lbd_diff(argv[1], argv[2], argv[3]);

	if (stat != LBD_OK)
	{
		fprintf(stderr, "Fatal error in libbdiff: %d\n", stat);
		return stat;
	}

	return EXIT_SUCCESS;
}
