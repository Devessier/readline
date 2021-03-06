# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bdevessi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/01/24 11:27:35 by bdevessi          #+#    #+#              #
#    Updated: 2019/02/28 17:40:53 by bdevessi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = readline.a

CFLAGS = -Wall -Wextra -Werror -Iinclude -I../libft/includes -g
CC = clang

RM = rm -f

AR = ar rcs

SRCS += src/readline.c
SRCS += src/setup.c
SRCS += src/display.c
SRCS += src/reader.c
SRCS += src/prompt.c
SRCS += src/cursor.c
SRCS += src/keys.c

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

$(OBJS): Makefile include/readline.h include/internal.h

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
