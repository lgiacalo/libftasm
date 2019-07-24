#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include "libfts.h"

// gcc *.c libfts.a

int main(int argc, char **argv)
{

	char	s1[]="La maison est bleu 8";

	for (int i = 0; i < 20; i++)
		ft_putchar(s1[i]);
	for (int i = 0; i < 20; i++)
		putchar(s1[i]);



	return (0);
}
