# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fthwala <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/18 11:17:41 by fthwala           #+#    #+#              #
#    Updated: 2017/11/13 07:50:17 by fthwala          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = ft_select

SRCS = \
	srcs/main.c \
	srcs/put_colours.c \
	srcs/ft_handle_signals.c \
	srcs/my_terminal.c \
	srcs/ft_print_list.c \
	srcs/up_down.c \
	srcs/ft_remove_item.c \
	srcs/items.c \
	srcs/put_functions.c

LIB = -ltermcap

FLAGS = -Wall -Werror -Wextra -o

all: $(NAME)

$(NAME):
	@gcc $(FLAGS) $(NAME) $(SRCS) $(LIB)

clean:
	@rm -rf $(NAME)

fclean:
	@rm -rf $(NAME)

re: fclean all

norm:
	@norminette $(SRCS) include/ft_select.h

author:
	@whoami > author
