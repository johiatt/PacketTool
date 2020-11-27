CFLAGS = -Wall -std=c99 
OBJS = packetTool.o
EXE = packetTool
LIBS = -lpcap

all:packetTool.c packetTool.o packetTool


debug:  CFLAGS += -g -O0
debug:  packetTool

packetTool.o:  packetTool.c
		gcc -c packetTool.c $(LIBS) -o packetTool.o 

$(EXE): $(OBJS)
		gcc $^ $(LIBS) -o $@

clean:
		rm *.o
