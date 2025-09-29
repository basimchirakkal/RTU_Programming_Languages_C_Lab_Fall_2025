
# Simple Makefile for Lab 1
CC = gcc
CFLAGS = -std=c11 -Wall -Wextra -Wpedantic -O2
LDFLAGS = 
BUILD_DIR = bin
SRC_DIR = src

PROGRAMS = $(BUILD_DIR)/hello $(BUILD_DIR)/calculator $(BUILD_DIR)/formats \
		   $(BUILD_DIR)/lab3_task1 $(BUILD_DIR)/lab3_task2 $(BUILD_DIR)/lab3_task3
$(BUILD_DIR)/lab3_task1: $(SRC_DIR)/lab3_task1.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

$(BUILD_DIR)/lab3_task2: $(SRC_DIR)/lab3_task2.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

$(BUILD_DIR)/lab3_task3: $(SRC_DIR)/lab3_task3.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

lab3_task1: $(BUILD_DIR)/lab3_task1
lab3_task2: $(BUILD_DIR)/lab3_task2
lab3_task3: $(BUILD_DIR)/lab3_task3

run-lab3_task1: lab3_task1
	./$(BUILD_DIR)/lab3_task1

run-lab3_task2: lab3_task2
	./$(BUILD_DIR)/lab3_task2

run-lab3_task3: lab3_task3
	./$(BUILD_DIR)/lab3_task3

all: $(PROGRAMS)

$(BUILD_DIR)/hello: $(SRC_DIR)/hello.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

$(BUILD_DIR)/calculator: $(SRC_DIR)/calculator.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

$(BUILD_DIR)/formats: $(SRC_DIR)/format_specifiers.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

hello: $(BUILD_DIR)/hello
calculator: $(BUILD_DIR)/calculator
formats: $(BUILD_DIR)/formats

run-hello: hello
	./$(BUILD_DIR)/hello

run-calculator: calculator
	./$(BUILD_DIR)/calculator

run-formats: formats
	./$(BUILD_DIR)/formats

clean:
	rm -rf $(BUILD_DIR)/*.o $(PROGRAMS)
