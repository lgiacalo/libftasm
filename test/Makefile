
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lgiacalo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/22 19:28:04 by lgiacalo          #+#    #+#              #
#    Updated: 2019/03/22 20:18:14 by lgiacalo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SERVER		= tests

################################################################################


CC			= gcc
CFLAGS		= -Wall -Wextra -Werror
CPPFLAGS	= -I ../include
OPT			= -g

COLOR		= \033[31m
FINCOLOR	= \033[0m

SPY			= @


################################################################################

SRC_PATH	= src
INC_PATH	= include
OBJ_PATH	= obj


SRC_SERVER		= main.c

OBJ_SERVER		= $(SRC_SERVER:.c=.o)

INC_S_C			= 

################################################################################

SRC_S	= $(addprefix $(SRC_PATH)/,$(SRC_SERVER))
OBJ_S	= $(addprefix $(OBJ_PATH)/,$(OBJ_SERVER))

INC = $(addprefix $(INC_PATH)/,$(INC_S_C))

LIB = ../libfts.a

################################################################################

ifeq ($(option), debug)
	CFLAGS = -g
endif
ifeq ($(option), alloc)
	OPT += -g -fsanitize=address
endif
ifeq ($(option), opti)
	OPT += -O3
endif
ifeq ($(option), dev)
	CFLAGS = -g
endif

################################################################################

all: $(SERVER)

$(OBJ_PATH):
	$(SPY)mkdir -p $(OBJ_PATH)

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.c $(LIB) Makefile
	$(SPY)$(CC) $(OPT) $(CFLAGS) $(CPPFLAGS) -Iinclude -c $< -o $@

$(SERVER): $(LIB) $(OBJ_PATH) $(OBJ_S)
	$(SPY)$(CC) $(OPT) $(CFLAGS) $(CPPFLAGS) -o $(SERVER) $(OBJ_S) $(LIB)
	$(SPY)echo "$(COLOR)$(SERVER)\t\t\t[OK]$(FINCOLOR)"

clean:
	$(SPY)/bin/rm -rf $(OBJ_S)
	$(SPY)rmdir $(OBJ_PATH) 2> /dev/null || true
	$(SPY)echo "$(COLOR)$(SERVER)\t\t\tSuppression *.o$(FINCOLOR)"

fclean: clean
	$(SPY)/bin/rm -rf $(SERVER)
	$(SPY)echo "$(COLOR)$(SERVER)\t\t\tSuppression $(SERVER)$(FINCOLOR)"

re: fclean all

norme:
	$(SPY)echo "$(COLOR)\tNORMINETTE : $(SERVER) \n$(FINCOLOR)"
	$(SPY)norminette $(SRC_S)
	$(SPY)norminette $(INC)


.PHONY : all clean fclean re norme

################################################################################
