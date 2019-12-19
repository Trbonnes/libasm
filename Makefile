CC = gcc
CFLAGS = -Wall -Wextra -Werror

NAME = libasm

${NAME}:
			nasm -f macho64 -g -o src/ft_strlen.o src/ft_strlen.s
			nasm -f macho64 -g -o src/ft_strcpy.o src/ft_strcpy.s
			nasm -f macho64 -g -o src/ft_strcmp.o src/ft_strcmp.s
			nasm -f macho64 -g -o src/ft_write.o src/ft_write.s
			nasm -f macho64 -g -o src/ft_read.o src/ft_read.s
			nasm -f macho64 -g -o src/ft_strdup.o src/ft_strdup.s
			${CC} ${CFLAGS} src/main.c src/ft_strlen.o src/ft_strcpy.o src/ft_strcmp.o src/ft_write.o src/ft_read.o src/ft_strdup.o

all:		${NAME}

clean: 
		cd src
		rm -f *.o

fclean:	clean
		rm -f ${NAME}
		rm -f a.out

re:		fclean all

.PHONY: all clean fclean re