#include "raylib.h"
#include "../inc/game.hpp"

Game game;

int main(int argc, char const *argv[])
{
    InitWindow(800, 800, "Hello");

    game.Init();
    while (!WindowShouldClose())
    {
        game.Update();
        BeginDrawing();
        ClearBackground(RAYWHITE);

        game.Draw();

        EndDrawing();
    }

    CloseWindow();
    
    return 0;
}
