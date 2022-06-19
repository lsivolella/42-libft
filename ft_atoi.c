/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lgoncalv <lgoncalv@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/27 13:14:29 by lgoncalv          #+#    #+#             */
/*   Updated: 2021/06/02 13:11:29 by lgoncalv         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_atoi(const char *nptr)
{
	int	sign;
	int	number;

	sign = 1;
	number = 0;
	while (*nptr == '\f' || *nptr == '\n' || *nptr == '\r'
		|| *nptr == '\t' || *nptr == '\v' || *nptr == ' ')
		nptr++;
	if ((*nptr == '+' || *nptr == '-') && *nptr != '\0')
	{
		if (*nptr == '-')
			sign *= -1;
		nptr++;
	}
	while (*nptr > 47 && *nptr < 58 && *nptr != '\0')
	{
		number = number * 10 + *nptr - 48;
		nptr++;
	}
	return (number * sign);
}
