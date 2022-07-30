/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_freematrix.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lgoncalv <lgoncalv@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/24 16:43:31 by lgoncalv          #+#    #+#             */
/*   Updated: 2022/07/30 10:23:51 by lgoncalv         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/***
 * @brief
 * @param matrix a pointer to pointer of any type
 * @return the number of pointers freed
 * or -1 if matrix is null
 **/
int	free_matrix(void **matrix)
{
	int	i;

	if (matrix == NULL)
		return (-1);
	i = -1;
	while (matrix[++i] != NULL)
		free(matrix[i]);
	free(matrix);
	return (i);
}
