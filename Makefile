#########################################################
### VARIABLES
#########################################################
NAME 	= expression
CC		= cc
CCFLAGS	= -Wall -Wextra -Werror
#########################################################
### SOURCES
#########################################################
OBJS	= ${SRCS:.c=.o}
SRCS	= main.c\
		 srcs/ft_display.c
INCLDS	= includes/
#########################################################
### RULES
#########################################################

all:		${NAME}

${NAME}:	${OBJS}
			${CC} -o ${NAME} ${OBJS}

%.o:	%.c
			${CC} ${CCFLAGS} -I ${INCLDS} -c $< -o $@

clean:
			rm -f main.o ${OBJS}

fclean:		clean
			rm -f ${NAME}

re:			fclean all

.PHONY:		all clean fclean re
