#include "../inc/board.hpp" 

void Board::Draw() {
    int size = 100;
    for(int i = 0; i < 8; ++i) {
        for(int j = 0; j < 8; ++j) {
            Color color  = (i + j) % 2 == 0 ? LIGHTGRAY : DARKGRAY;
            DrawRectangle(i * size, j * size, size, size, color);
        }
    }
}