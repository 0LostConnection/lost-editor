TARGET = led
CC = gcc
CFLAGS = -Wall -Wextra -pedantic -std=c99

SRCS = $(wildcard *.c)

all: $(TARGET) run

$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -f $(TARGET)

run: $(TARGET)
	./$(TARGET)

.PHONY: all clean run