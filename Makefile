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
CFLAGS		=	-f macho64
CPPFLAGS	=	-Iinclude
LINK		=	ar rc -lc
OPT			=	

COLOR		=	\033[31m
FINCOLOR	=	\033[0m

SPY			=	@


################################################################################


SRC_PATH	=	src

OBJ_PATH	=	obj

SRC_NAME	=	bzero.s	

OBJ_NAME	=	$(SRC_NAME:.s=.o)


################################################################################


SRC	= $(addprefix $(SRC_PATH)/,$(SRC_NAME))
OBJ	= $(addprefix $(OBJ_PATH)/,$(OBJ_NAME))

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

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.s 
	$(SPY)$(CC) $(CFLAGS) $(CPPFLAGS) $(OPT) $< -o $@ 


$(NAME): $(OBJ_PATH) $(OBJ)
	$(SPY)$(LINK) $(NAME) $(OBJ)
#	$(SPY)$(CC) -o $(NAME) $(OBJ)


clean:
	$(SPY)/bin/rm -rf $(OBJ)
	$(SPY)rmdir $(OBJ_PATH) 2> /dev/null || true
	$(SPY)echo "$(COLOR)$(NAME)\t\t\tSuppression *.o$(FINCOLOR)"


fclean: clean
	$(SPY)/bin/rm -rf $(NAME)
	$(SPY)echo "$(COLOR)$(NAME)\t\t\tSuppression libft.a$(FINCOLOR)"


re: fclean all


.PHONY : all clean fclean re norme

################################################################################
