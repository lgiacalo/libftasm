#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include "libfts.h"

// gcc *.c libfts.a

int main(int argc, char **argv)
{

	int fd = 0;

	printf("\n\nft_cat\nHello World !");
	fd = open("hello.world", O_RDONLY);
	ft_cat(fd);

	return (0);
}
