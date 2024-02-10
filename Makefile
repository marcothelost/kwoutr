CC=gcc
CFLAGS=-Wall -Wextra -Werror
SRC_DIR=src
BUILD_DIR=build
EXECUTABLE=$(BUILD_DIR)/kwoutr

all: $(EXECUTABLE)

$(EXECUTABLE): $(BUILD_DIR) $(SRC_DIR)/Main.c
	$(CC) $(CFLAGS) -o $@ $(SRC_DIR)/Main.c

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean
