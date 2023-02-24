CC? = clang
SDL2FLAGS = $(shell pkg-config sdl2 --cflags --libs SDL2_image)
CFLAGS? = -std=c11 -Wall -pedantic -Werror -Wshadow -Wstrict-aliasing -Wstrict-overflow

main: src/*.c
	${CC} ${CFLAGS} -O2 -o $@ $< ${SDL2FLAGS}

clean:
	rm -f main *.o

fullclean: clean
