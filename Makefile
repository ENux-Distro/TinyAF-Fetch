# Makefile for TinyAF-Fetch

# Compiler and flags
CC := gcc
CFLAGS := -Wall -O2

# Files
SRC := tinyaffetch.c
BIN := tinyaffetch
SCRIPT := tinyaffetch-run

# Default target: compile
all: $(BIN)

# Compile C program
$(BIN): $(SRC)
	$(CC) $(CFLAGS) -o $@ $<

# Install target
install: $(BIN)
	install -Dm755 $(BIN) /usr/bin/$(BIN)
	mkdir -p /etc/tinyaffetch
	install -Dm755 $(SCRIPT) /etc/tinyaffetch/$(SCRIPT)

# Clean target
clean:
	rm -f $(BIN)
