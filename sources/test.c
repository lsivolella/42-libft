#include <libft.h>
#include <stdio.h>

// gcc sources/*.c -o test -I ./includes && ./test

int	main(void)
{
	int nbr;
	char *num;

	nbr = 10;
	num = ft_itoa(nbr);
	ft_printf("Number %d, String: %s\n", nbr, num);
	return (0);
}