/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_max.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adiaz-lo <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/22 16:44:58 by adiaz-lo          #+#    #+#             */
/*   Updated: 2019/10/22 18:57:53 by adiaz-lo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/* Dictionary -> [o|x|.|fil_MAX|col_MAX] */

void	ft_conversion_postfill()
{
	int i;
	int j;

	i = i_MAX - max;
	while(i <= i_MAX)
	{
		j = j_MAX - max
		while(j <= j_MAX)
		{
			map[i][j] = dictionary[1];
			j++;
		}
		i++;
	}
	i = 0;
	j = 0;
	while(i < dictionary[3])
	{
		j = 0;
		while(j < dictionary[4])
		{
			if (map[i][j] == dictionary[1])
			else if (map[i][j] == dictionary[1]
			j++;
		}
		i++;
	}
}

void	ft_conversion_write(char **map, char *dictionary)
{
	int i;
	int j;

	i = 0;
	while (*map[i])
	{
		j = 0;
		while (map[i][j])
		{
			if (map[i][j] == dictionary[0])
				map[i][j] = '0';
			else if (map[i][j] == dictionary[2])
				map[i][j] = 1;
			j++;
		}
		i++;
	}
}

int		ft_max(char **map, int *i_MAX,int *j_MAX )
	int j;
	int i;
	int max;

	max = matrix[0][0];
	i = 0;
	while (*matrix[i])
	{
		j = 0;
		while (matrix[i][j])
		{
			if (matrix[i][j] > max)
			{
				max = matrix[i][j];
				*i_MAX = i;
				*j_MAX = j;
			}
			j++;
		}
		i++;
	}
	return max;
}
/*Necesitamos en algún momento guardar fila_MAX y columna_MAX en el array dictionary*/
char **map = 

{	".o......o.",
	"..o...o...",
	"o....o.o.o",
	".o.o.....o",
	"....o.....",
	".o..o..o..",
	"..o..o....",
	".oo......o",
	"....o.o...",
	"...o..o...",
	"....o..o..",
	"..o...o..."
};
