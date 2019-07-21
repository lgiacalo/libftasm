#include <stdio.h>
#include <stdlib.h>
#include "libfts.h"

// gcc *.c libfts.a

int main(int argc, char **argv)
{
	// char	str1[50] = "bonjour\0";
	// char	str2[] = " lena\0";
	//
	//
	// printf("ret = %d - ft_isdigit(%d)\n", ft_isdigit('0'), 0);
	// printf("ret = %d - ft_isdigit(%d)\n", ft_isdigit('9'), 9);
	// // printf("ret = %d - ft_isdigit(%c)\n", ft_isdigit('z'), 'z');
	//


	int			i;
	int			j;
	int			ret;

	if (argc == 3)
	{
		i = atoi(argv[1]);
		j = -9;
		while (j < 255)
		{
			ret = ft_isdigit(j);
			if (j % 10 == 0)
				printf("%d ", ret);
			else
				printf("%d", ret);
			j++;
		}
	}

	return (0);
}
