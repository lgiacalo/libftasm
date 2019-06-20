#include <stdio.h>
#include "libfts.h"

// gcc *.c libfts.a

int main(void)
{
	char	str[] = "bonjour\0";

	printf("Chaine : [%s]\n", str);
	ft_bzero((void *)str, (size_t)8);

	printf("Chaine : [%s]\n", str);


	return (0);
}
