#include <stdio.h>
#include "libfts.h"

// gcc *.c libfts.a

int main(void)
{
	char	str1[50] = "bonjour\0";
	char	str2[] = " lena\0";

	printf("Chaine : [%s][%s]\n", str1, str2);

//	ft_bzero((void *)str, (size_t)8);
	ft_strcat(NULL, str2);
	printf("Chaine : [%s][%s]\n", str1, str2);
	ft_strcat(str1, str2);

	printf("Chaine : [%s][%s]\n", str1, str2);


	return (0);
}
