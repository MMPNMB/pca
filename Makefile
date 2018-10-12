CC = gcc
CFLAGS = -MD -ggdb -Os -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11 -m32 -I. -Iinclude -I../include
SOURCES = $(wildcard src/*.c)
ASMS = $(patsubst src/%.c, obj/%.s, $(SOURCES))
TARGET = libasm.a

.PHONY: first clean

$(TARGET): first $(ASMS)
	ar rc $@ $(ASMS)

obj/%.s: src/%.c
	$(CC) -S -o $@ $(CFLAGS) $<

first:
	@if [ ! -d obj ]; then \
	  mkdir obj; \
	fi

clean:
	rm -f $(TARGET) $(ASMS)
	rm -f *.s
	rm -f *.d
	rm -f src/*.v
	rm -f src/*.O
destclean:
	rm -f $(TARGET) $(ASMS) obj/*.d

-include obj/*.d
