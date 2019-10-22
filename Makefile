# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jrojo-de <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/22 16:57:53 by jrojo-de          #+#    #+#              #
#    Updated: 2019/10/22 17:16:28 by jrojo-de         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	= 

OBJS	= ${SRCS:.c=.o}

NAME 	= BSQ

CC		= cc

RM		= rm -f

CFLAGS	= -Wall -Wextra -Werror -g

.c.o:		
			${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}:	${OBJS}
			${CC} -o ${NAME} ${OBJES}

all:		${NAME}

clean:
			${RM} ${NAME}

fclean:		clean

.PHONY:		all clean fclean re
