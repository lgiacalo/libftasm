#include <stdio.h>
#include <stdlib.h>
#include "libfts.h"

// gcc *.c libfts.a


void    is_ok(int ok)
{
	ok ? printf("\033[0;32m\033[1m.\033[0m") : printf("\033[0;31m\033[1mF\033[0m");
}


int main(int argc, char **argv)
{

	char	*ptr = NULL;
	int		i = 50;

	printf("\n\nft_memset\n");
	ptr = (char *)malloc(sizeof(char) * i);
	ft_memset(ptr, 42, i);
	while (--i >= 0)
	{
		if (ptr[i] == 42)
			is_ok(1);
		else
		{
			printf("[%c/%d]", ptr[i], (int)ptr[i]);
			is_ok(0);
		}
	}
	return (0);
}
