NAME_LIB = library_make.a
NAME_EXE = program_make

SRCS_LIB = calculator.cpp
SRCS_EXE = main.cpp

BINS_LIB = $(SRCS_LIB:.cpp=.o)
BINS_EXE = $(SRCS_EXE:.cpp=.o)

CXXFLAGS = -Wall -Wextra -Werror

.PHONY: all clean fclean re

all: $(NAME_EXE)

$(NAME_LIB): $(BINS_LIB)
	ar rc $(NAME_LIB) $(BINS_LIB)
	ranlib $(NAME_LIB)

$(NAME_EXE): $(NAME_LIB) $(BINS_EXE)
	g++ $(CXXFLAGS) $(BINS_EXE) -o $(NAME_EXE) $(NAME_LIB)

clean:
	rm -f $(BINS_LIB) $(BINS_EXE)

fclean: clean
	rm -f $(NAME_LIB) $(NAME_EXE)

re: fclean all
