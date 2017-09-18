ASM   = nasm

CC = gcc

EXEC = test

CC_FLAGS = -Wall -Werror -Wextra

NAME  = libfts.a

SRC   = ft_bzero.s\
		ft_strlen.s\
		ft_puts.s\
		ft_strcat.s\
		ft_islower.s\
		ft_isupper.s\
		ft_isascii.s\
		ft_isalpha.s\
		ft_isdigit.s\
		ft_isprint.s\
		ft_isalnum.s\
		ft_toupper.s\
		ft_tolower.s\
		ft_memset.s\
		ft_memcpy.s\
		ft_strdup.s\

OBJ   = $(SRC:%.s=%.o)

ASM_FLAGS = -f elf64

%.o : %.s libfts.h
	@echo "compiling $<"
	@$(ASM) $(ASM_FLAGS) -o $@ $<

all: $(NAME)

$(NAME): $(OBJ) main.c
	@ar rc $@ $^
	@ranlib $@
	@echo "library compiled"
	@$(CC) $(CC_FLAGS) main.c -o $(EXEC) -L. -lfts
	
clean:
	@rm -rf $(OBJ)
	@echo "o files removed"

fclean: clean
	@rm -rf $(NAME) $(EXEC)
	@echo "library removed and executable"

re: fclean all