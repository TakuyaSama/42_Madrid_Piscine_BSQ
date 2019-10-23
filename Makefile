# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jrojo-de <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/22 16:57:53 by jrojo-de          #+#    #+#              #
#    Updated: 2019/10/23 16:16:15 by adiaz-lo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#GLOBAL VARIABLES
#MAIN PROGRAM
PROGRAM_NAME = BSQ
SRC_MAIN = main.c
OBJ_MAIN = main.o
#BSQ.A LIBRARY
NAME_LIB_BSQ = bsq
LIB_BSQ = lib/lib_bsq.a
INCLS_BSQ = linker/bsq.h
SRCS_BSQ = $(shell find BSQ -name "*.c")
OBJS_BSQ = $(patsubst %.c, %.o, $(SRCS_BSQ))
CC		= gcc
CFLAGS	= -Wall -Wextra -Werror
INC_FLAGS = -I linker
LIB_FLAGS = -L lib
AR = ar -rc

all:	$(PROGRAM_NAME)

$(PROGRAM_NAME): $(LIB_BSQ) $(OBJ_MAIN)
	@echo Compiling Binary File: $@ ...
	$(CC) $(CFLAGS) $(LIB_FLAGS) -l $(NAME_LIB_BSQ) $(OBJ_MAIN) $(LIB_BSQ) -o $@

$(LIB_BSQ): $(OBJS_BSQ) $(INCLS_BSQ)
	@echo Compiling Library: $@ ...
	$(AR) $@ $^

$(OBJ_MAIN): $(SRC_MAIN) $(INCLS_BSQ)
	@echo Compiling Main File: $@ ...
	$(CC) $(CFLAGS) $(INC_FLAGS) -c $< -o $@

%.o: %.c $(INCLS_BSQ)
	@echo Compiling Objects Files: $@ ...
	$(CC) -c $< $(CFLAGS) $(INC_FLAGS) -o $@

clean:
	@echo Deleting Objects Files: $@ ...
	rm $(OBJS_BSQ) $(OBJ_MAIN)

fclean:	clean
	@echo Deleting Library & Binary Files: $@ ...
	rm $(LIB_BSQ) $(PROGRAM_NAME)

re: fclean all
