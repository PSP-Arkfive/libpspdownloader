CC = psp-gcc
AR = psp-ar
CFLAGS = -O2 -G0

OBJS = libpspdownloader.o

INC = /usr/local/pspdev/psp/sdk/include

all: libpspdownloader.a

libpspdownloader.a: $(OBJS)
	$(AR) rcs $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -I$(INC) -c $< -o $@

clean:
	rm -f *.o *.a
