ASM= nasm
ASMFLAGS= -f macho64 -g
OBJECTS= src/ft_strlen.o src/ft_strcpy.o src/ft_strcmp.o src/ft_write.o src/ft_read.o src/ft_strdup.o
NAME= libasm.a
TEST_BINARY= test
TEST_FILES= src/main.c
TEST_CC= gcc
TEST_CFLAGS= -Wall -Wextra -Werror

%.o: %.s
	$(ASM) $(ASMFLAGS) -o $@ $<

$(NAME): $(OBJECTS)
	ar rc $(NAME) $(OBJECTS)

all: $(NAME)

$(TEST_BINARY): $(TEST_FILES)
	$(TEST_CC) $(TEST_CFLAGS) $(TEST_FILES) $(NAME) -o $(TEST_BINARY)

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(NAME)
	rm -f $(TEST_BINARY)

re: fclean all

.PHONY: all clean fclean re