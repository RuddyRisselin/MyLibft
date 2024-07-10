# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rrisseli <rrisseli@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/08 12:24:43 by rrisseli          #+#    #+#              #
#    Updated: 2024/07/07 13:35:49 by rrisseli         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		= ft_atoi.c \
			  ft_bzero.c \
			  ft_calloc.c \
			  ft_isalnum.c \
			  ft_isalpha.c \
			  ft_isascii.c \
			  ft_isdigit.c \
			  ft_isprint.c \
			  ft_itoa.c \
			  ft_memchr.c \
			  ft_memcmp.c \
			  ft_memcpy.c \
			  ft_memmove.c \
			  ft_memset.c \
			  ft_putchar_fd.c \
			  ft_putendl_fd.c \
			  ft_putnbr_fd.c \
			  ft_putstr_fd.c \
			  ft_split.c \
			  ft_strchr.c \
			  ft_strdup.c \
			  ft_striteri.c \
			  ft_strjoin.c \
			  ft_strjoin_gnl.c \
			  ft_strlcat.c \
			  ft_strlcpy.c \
			  ft_strlen.c \
			  ft_strmapi.c \
			  ft_strncmp.c \
			  ft_strnstr.c \
			  ft_strrchr.c \
			  ft_strtrim.c \
			  ft_tolower.c \
			  ft_toupper.c \
			  get_next_line.c \
			  ft_printf.c \
			  printf_utils.c \
			  printhex.c \
			  printptr.c \
			  ft_substr.c \
			  ft_strcmp.c \
			  print_tab.c \
			  
SRCS_BONUS	= ft_lstnew_bonus.c \
			  ft_lstadd_front_bonus.c \
			  ft_lstsize_bonus.c \
			  ft_lstadd_back_bonus.c \
			  ft_lstlast_bonus.c \
			  ft_lstdelone_bonus.c \
			  ft_lstclear_bonus.c \
			  ft_lstiter_bonus.c \
			  ft_lstmap_bonus.c

OBJS = ${SRCS:.c=.o}
OBJSB = ${SRCS_BONUS:.c=.o}
NAME = libft.a
LIBC = ar rcs
CC = cc
RM = rm -fr
CFLAGS = -Wall -Wextra -Werror

%.o: %.c
	${CC} ${CFLAGS} -c $< -o $@

${NAME}: ${OBJS}
	${LIBC} ${NAME} ${OBJS}

all: ${NAME}

bonus: ${OBJS} ${OBJSB}
	${LIBC} ${NAME} ${OBJS} ${OBJSB}

clean:
	${RM} ${OBJS} ${OBJSB}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: all bonus clean fclean re
