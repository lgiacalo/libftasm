#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include "libfts.h"

// gcc *.c libfts.a

int main(int argc, char **argv)
{

	char	s1[]="La maison est bleu 8";
	char	*tmp;

	tmp = ft_memchr(s1, argv[1][0], 21);
	printf("retour strchr : [%s][%p] -- [%p]\n", tmp, tmp, s1);

	return (0);
}
