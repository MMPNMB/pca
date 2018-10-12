CC=gcc
CFLAGS_WARN = -Wall -c
SOURCES = $(wildcard *.c)
OBJS = $(patsubst %.c,%.o,$(SOURCES))
  

ALL:$(SOURCES)
	$(CC) $(CFLAGS_WARN) $(SOURCES)
clean:	
	rm -f $(OBJS)
	rm -f $(TARGET)
	rm -f *.O *.d *.v *.plist
