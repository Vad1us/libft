# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vradchen <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/15 14:44:48 by vradchen          #+#    #+#              #
#    Updated: 2017/11/15 14:44:49 by vradchen         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
FLAG = -Wall -Wextra -Werror
OPT = -c -I libft.h
SRCS =	get_next_line.c \
		ft_isalpha.c ft_memchr.c ft_strcat.c ft_strlcat.c ft_strnstr.c \
		ft_isascii.c ft_memcmp.c ft_strchr.c ft_strlen.c ft_strrchr.c \
		ft_atoi.c ft_isdigit.c ft_memcpy.c ft_strcmp.c ft_strncat.c	\
		ft_strstr.c ft_bzero.c ft_isprint.c ft_memmove.c ft_strcpy.c \
		ft_strncmp.c ft_tolower.c ft_isalnum.c ft_memccpy.c ft_memset.c \
		ft_strdup.c ft_strncpy.c ft_toupper.c ft_memalloc.c ft_memdel.c \
		ft_strnew.c ft_strdel.c ft_strclr.c ft_striter.c  ft_striteri.c \
		ft_strmap.c ft_strmapi.c ft_strequ.c ft_strnequ.c ft_strsub.c \
		ft_strjoin.c ft_strtrim.c ft_strsplit.c ft_itoa.c ft_putchar.c \
		ft_putstr.c ft_putendl.c ft_putnbr.c ft_putchar_fd.c ft_putstr_fd.c \
		ft_putendl_fd.c ft_putnbr_fd.c ft_lstnew.c ft_lstdelone.c  \
		ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c ft_strnlen.c ft_recursive_factorial.c \
		ft_swap.c ft_sqrt.c ft_r.c ft_arg_join.c

OBJ =	$(SRCS:.c=.o)

$(NAME):
	@make -C ./printf/
	gcc $(FLAG) $(OPT) $(SRCS)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)
	@echo "\x1b[32mLibrary is successfully built\x1b[0m"

all: $(NAME)

%.o:	%.c
		@gcc -g -o $@ -c $<

clean:
	@ /bin/rm -f $(OBJ)
	@echo "\x1b[33mObject files are cleaned\x1b[0m"

fclean: clean
	@ /bin/rm -f $(NAME)
	@echo "\x1b[33mAll is cleaned\x1b[0m"

re: fclean all

.PHONY: all clean fclean re

.NOTPARALLEL: all clean fclean re
