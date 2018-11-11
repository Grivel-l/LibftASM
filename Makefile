NAME = libfts.a
SRCS_PATH = ./srcs/
OBJS_PATH = ./objs/
SRCS = ft_bzero.s ft_isascii.s ft_memcpy.s ft_puts.s ft_strlen.s \
		ft_isalnum.s ft_isdigit.s ft_memset.s ft_strcat.s ft_tolower.s \
		ft_isalpha.s ft_isprint.s ft_strdup.s ft_toupper.s ft_cat.s
OBJS = $(addprefix $(OBJS_PATH), $(SRCS:.s=.o))
ASM_FLAGS = -f elf64
ASM_COMPILER = nasm

.PHONY: all clean fclean re Makefile

all: $(NAME)

$(NAME): $(OBJS_PATH) $(OBJS)
	ar rcs $(NAME) $(OBJS)

$(OBJS_PATH):
	mkdir $(OBJS_PATH)

$(OBJS_PATH)%.o: $(SRCS_PATH)%.s
	$(ASM_COMPILER) $(ASM_FLAGS) -o $@ $^

clean:
	rm -rf $(OBJS_PATH)

fclean: clean
	rm -f $(NAME)

re: fclean all
