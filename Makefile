# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lgiacalo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/06/20 15:45:52 by lgiacalo          #+#    #+#              #
#    Updated: 2019/06/20 16:58:19 by lgiacalo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libfts.a

################################################################################


CC			=	nasm
CFLAGS		=	-f macho64 #--prefix _
CPPFLAGS	=	-Iinclude
LINK		=	ar rc -lc
OPT			=

COLOR		=	\033[31m
FINCOLOR	=	\033[0m

SPY			=
TEST			=	tests


################################################################################


SRC_PATH	=	src
OBJ_PATH	=	obj
INC_PATH	=	include

SRC_NAME	=	ft_bzero.s ft_strcat.s \
				ft_isalpha.s ft_isdigit.s ft_isalnum.s ft_isascii.s \
				ft_isprint.s ft_isblank.s ft_islower.s ft_isupper.s \
				ft_tolower.s ft_toupper.s ft_puts.s ft_strlen.s \
				ft_memset.s ft_memcpy.s ft_strdup.s ft_cat.s

OBJ_NAME	=	$(SRC_NAME:.s=.o)

INC_PATH	=	libfts.h

################################################################################


SRC	= $(addprefix $(SRC_PATH)/,$(SRC_NAME))
OBJ	= $(addprefix $(OBJ_PATH)/,$(OBJ_NAME))
INC	= $(addprefix $(INC_PATH)/,$(INC_NAME))

################################################################################

ifeq ($(option), debug)
	OPT += -g
endif
ifeq ($(option), alloc)
	OPT += -g -fsanitize=address
endif
ifeq ($(option), opti)
	OPT += -O3
endif

################################################################################



all: $(NAME)
	$(SPY)echo "$(COLOR)$(NAME)\t\t\t[OK]$(FINCOLOR)"


$(OBJ_PATH):
	$(SPY)mkdir $(OBJ_PATH) 2> /dev/null || true
#	$(SPY)mkdir -p $(OBJ_PATH)

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.s $(INC)
	$(SPY)$(CC) $(CFLAGS) $(CPPFLAGS) $(OPT) $< -o $@


$(NAME): $(OBJ_PATH) $(OBJ) $(INC)
	$(SPY)$(LINK) $(OPT) $(NAME) $(OBJ)
#	$(SPY)$(CC) -o $(NAME) $(OBJ)


$(TEST):
	make -C test/

clean:
	$(SPY)/bin/rm -rf $(OBJ)
	$(SPY)rmdir $(OBJ_PATH) 2> /dev/null || true
	$(SPY)echo "$(COLOR)$(NAME)\t\t\tSuppression *.o$(FINCOLOR)"


fclean: clean
	$(SPY)/bin/rm -rf $(NAME)
	$(SPY)echo "$(COLOR)$(NAME)\t\t\tSuppression libfts.a$(FINCOLOR)"


re: fclean all


.PHONY : all clean fclean re norme

################################################################################
