#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include "libfts.h"

// gcc *.c libfts.a
int test_memcmp(int *nb);


void	swap(int *a, int *b)
{
	int temp;

	temp = *a;
	*a = *b;
	*b = temp;
}

int main(int argc, char **argv)
{

	int	i, j;
	int	*k, *l;

	i = 1;
	j = 2;
	k = &i;
	l = &j;
	printf("i = [%d] / j = [%d]\n", *k, *l);
	ft_swap(k, l);
	// swap(k, l);
	printf("i = [%d] / j = [%d]\n", *k, *l);

	// printf("retour test_memcmp : [%d]\n", test_memcmp(&(int){ 1 }));

	return (0);
}
//
//
// #define MIN(a, b) (a < b ? a : b)
//
// static int unit_test(const void *s1, const void *s2, size_t n)
// {
// 	int	i = ft_memcmp(s1, s2, n);
// 	// printf("\n\nmine: %d (\"%s\", \"%s\", %zu)\n", i, s1, s2, n);
// 	int	j = memcmp(s1, s2, n);
// 	// printf("real: %d (\"%s\", \"%s\", %zu)\n", j, s1, s2, n);
// 	printf("\n\n{s = [%d]/ v = [%d]}\n", i, j);
//
// 	return (i == j);
// }
//
// int test_memcmp(int *nb)
// {
// 	static char *s1[] = {
// 		"foooooooo",
// 		"hello world",
// 		"",
// 		"a",
// 		"!@#$%^&*()"
// 	};
// 	static char *s2[] = {
// 		"foo",
// 		"hello world",
// 		"",
// 		"b",
// 		"hellow",
// 		"!@#$%^&()"
// 	};
// 	static int n1[][42] = {
// 		{1234, 2, 3, 42, 0, 66, 7},
// 		{'*', 42}
// 	};
// 	static int n2[][42] = {
// 		{1234, 2, 3, 42, 0, 66, 7, 8},
// 		{1234, 2, 3, 42},
// 		{42, '*', 0},
// 		{1234, 2, 3, 42, 5, 66}
// 	};
// 	size_t i, j;
// 	int failed = 0;
//
// 	for (i = 0; i < sizeof(s1) / sizeof(*s1); i++) {
// 		for (j = 0; j < sizeof(s2) / sizeof(*s2); j++) {
// 			if (unit_test(s1[i], s2[j],
// 					  MIN(strlen(s1[i]), strlen(s2[j]))) == 0) {
// 				printf(">>> failed test %zu: \"%s\", \"%s\"\n",
// 					   i * sizeof(s2) / sizeof(*s2) + j,
// 					   s1[i], s2[j]);
// 				failed++;
// 			}
// 		}
// 	}
// 	*nb = i * j;
// 	for (i = 0; i < sizeof(n1) / sizeof(*s1); i++) {
// 		for (j = 0; j < sizeof(n2) / sizeof(*n2); j++) {
// 			if (unit_test(n1[i], n2[j],
// 					  MIN(sizeof(n1), sizeof(n2))) == 0) {
// 				printf("\nfailed test %zu: (%zu, %zu)",
// 					   *nb + i * sizeof(n2) / sizeof(*n2) + j,
// 					   i, j);
// 				failed++;
// 			}
// 		}
// 	}
// 	*nb += i * j;
// 	return (failed);
// }
