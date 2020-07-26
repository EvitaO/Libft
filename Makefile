# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: eovertoo <marvin@codam.nl>                   +#+                      #
#                                                    +#+                       #
#    Created: 2019/03/25 15:40:42 by eovertoo      #+#    #+#                  #
#    Updated: 2019/04/10 14:01:58 by eovertoo      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = atoi bzero isalnum isalpha isascii isdigit isprint\
	itoa memalloc memccpy memchr memcmp memcpy memdel\
	memmove memset putchar putchar_fd putendl\
	putendl_fd putnbr putnbr_fd putstr putstr_fd strcat\
	strchr strclr strcmp strcpy strdel strdup strequ\
	striter striteri strjoin strlcat strlen strmap\
	strmapi strncat strncmp strncpy strnequ\
	strnew strnstr strrchr strsplit strstr strsub\
	strtrim tolower toupper lstnew lstdelone\
	lstdel lstadd lstiter swap isspace islower\
	isupper strrev isblank lstmap list_size

FILEC =	$(SRC:%=ft_%.c)

OBJ = atoi bzero isalnum isalpha isascii isdigit isprint\
	itoa memalloc memccpy memchr memcmp memcpy memdel\
	memmove memset putchar putchar_fd putendl\
	putendl_fd putnbr putnbr_fd putstr putstr_fd strcat\
	strchr strclr strcmp strcpy strdel strdup strequ\
	striter striteri strjoin strlcat strlen strmap\
	strmapi strncat strncmp strncpy strnequ\
	strnew strnstr strrchr strsplit strstr strsub\
	strtrim tolower toupper lstnew lstdelone\
	lstdel lstadd lstiter swap isspace islower\
	isupper strrev isblank lstmap list_size

FILEO = $(OBJ:%=ft_%.o)

INC = libft.h

all: $(NAME)

$(NAME):
	@echo "Compiling..."
	@gcc -Wall -Wextra -Werror -c $(FILEC) -I$(INC)
	@ar rc $(NAME) $(FILEO)
	@ranlib $(NAME)

clean:
	@echo "Objects have been removed."
	@/bin/rm -f $(FILEO)

fclean: clean
	@echo "Library has been removed."
	@/bin/rm -f $(NAME)

re: fclean all
