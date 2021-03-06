PREFIX = /opt/berry
CFLAGS = -Wall -Os
#CFLAGS = -Wall -lstdc++ -O2 -Os
#CFLAGS = -g `gtk-confg --cflags`
#LDFLAGS = `gtk-config --libs`
CC = gcc

SRCS = fs.c
OBJS = ${SRCS:.c=.o}

fs:		${OBJS}
		${CC} ${CFLAGS} ${LDFLAGS} -o $@ ${OBJS}

install:	fs
		strip fs
		mkdir -p ${PREFIX}
		install -m 0755 fs ${PREFIX}

clean:
		rm -f *.o *~ fs
