# System = i686-pc-linux-gnu

CC      = gcc
CFLAGS  = -I../
CFLAGS += -g -O2 -D_REENTRANT -Wall
LIBS    = -lrt -lpthread 

CLEANFILES = core core.* *.core *.o temp.* *.out

PROGS =	domain_parse dns_to_ip demo

all:	${PROGS}

EXECUTE = ${CC} ${CFLAGS} -o $@ $^ ${LIBS}

domain_parse: domain_parse_main.o domain_parse.o
	${EXECUTE}

dns_to_ip: dns_to_ip.o
	${EXECUTE}

demo:demo.o
	${EXECUTE}

clean:
	rm -f ${PROGS} ${CLEANFILES}
