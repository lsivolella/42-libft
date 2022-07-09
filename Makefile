# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lgoncalv <lgoncalv@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/07 10:31:36 by lgoncalv          #+#    #+#              #
#    Updated: 2022/07/09 13:04:43 by lgoncalv         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# COMPILER
CC				= gcc

# FLAGS
C_FLAGS			= -Wall -Werror -Wextra
INCLUDES		= -I $(INCLUDES_PATH)

# PATH
INCLUDES_PATH	= ./includes
SRCS_PATH		= ./sources
OBJS_PATH		= ./objects

# COMMANDS
RM =			/bin/rm -f

# NAMES
NAME			= libft.a

# SOURCES
SRCS		= ft_memset.c\
			ft_bzero.c\
			ft_memcpy.c\
			ft_memccpy.c\
			ft_memmove.c\
			ft_memchr.c\
			ft_memcmp.c\
			ft_strlen.c\
			ft_strlcpy.c\
			ft_strlcat.c\
			ft_strchr.c\
			ft_strrchr.c\
			ft_strnstr.c\
			ft_strncmp.c\
			ft_atoi.c\
			ft_isalpha.c\
			ft_isdigit.c\
			ft_isalnum.c\
			ft_isascii.c\
			ft_isprint.c\
			ft_toupper.c\
			ft_tolower.c\
			ft_calloc.c\
			ft_strdup.c\
			ft_substr.c\
			ft_strjoin.c\
			ft_strtrim.c\
			ft_split.c\
			ft_itoa.c\
			ft_strmapi.c\
			ft_putchar_fd.c\
			ft_putstr_fd.c\
			ft_putendl_fd.c\
			ft_putnbr_fd.c\
			ft_lstnew.c\
			ft_lstadd_front.c\
			ft_lstsize.c\
			ft_lstlast.c\
			ft_lstadd_back.c\
			ft_lstdelone.c\
			ft_lstclear.c\
			ft_lstiter.c\
			ft_lstmap.c\
			test.c

SRCS			:= $(addprefix $(SRCS_PATH)/,$(SRCS))

# OBJECTS
OBJS			= $(subst $(SRCS_PATH),$(OBJS_PATH),$(SRCS:%.c=%.o))

# PATTERN RULE
$(OBJS_PATH)/%.o : $(SRCS_PATH)/%.c
	mkdir -p $(OBJS_PATH)
	$(CC) $(C_FLAGS) $(INCLUDES) -c $< -o $@

all:	$(NAME)

$(NAME): $(OBJS)
	@ar -rsc $(NAME) $(OBJS)
	@echo "[LIBFT] Library [$(NAME)] created!"

clean:
	@$(RM) $(OBJS)
	@echo "[LIBFT] Objects removed!"

fclean: clean
	@$(RM) $(NAME)
	@echo "[LIBFT] Library [$(NAME)] removed!"

re: fclean all

rebonus: fclean bonus

# .so = shared object -> library link happens at runtime
# revise this command
so:
	$(CC) -fPIC $(C_FLAGS) -c $(SRCS)
	gcc -shared -o libft.so $(OBJS)

.PHONY: all bonus clean fclean re