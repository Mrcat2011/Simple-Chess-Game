CC = g++
CFLAGS = -std=c++23 -Wall -g
LDFLAGS = -lraylib -lm -lpthread -ldl -lX11 -lGL -lm

SRC = src/main.cpp src/board.cpp src/piece.cpp src/game.cpp
OBJ_DIR = build
OBJ = $(SRC:src/%.cpp=$(OBJ_DIR)/%.o)  
EXEC = chess_game

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(OBJ) -o $(EXEC) $(LDFLAGS)

$(OBJ_DIR)/%.o: src/%.cpp
	@mkdir -p $(OBJ_DIR)  
	$(CC) $(CFLAGS) -c $< -o $@


clean:
	rm -rf $(OBJ_DIR) $(EXEC)
