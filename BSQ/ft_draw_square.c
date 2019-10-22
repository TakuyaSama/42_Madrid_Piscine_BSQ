/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_draw_squar.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jrojo-de <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/22 17:30:24 by jrojo-de          #+#    #+#             */
/*   Updated: 2019/10/22 19:30:37 by jrojo-de         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	ft_putchar(char c)
{
	write(1, &c, 1);
}

void	ft_draw_squar(char	**matrix)
{
	int i;
	int j;

	i = 0;
	while (*matrix[i] !='\0')
	{
		j = 0;
		while (matrix[i][j] != '\0')
		{
			ft_putchar(matrix[i][j]);
			j++;
		}
		i++;.
	}
}
