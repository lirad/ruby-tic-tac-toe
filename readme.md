# Ruby Tic-Tac-Toe

## Game instructions

Tic-Tac-Toe is a very popular game, which consists in making a sequence of three symbols in either a row, column or diagonal in a 3x3 board.

To play the game follow the game installation steps mention below this file. After you done that, run the main file and follow these steps:

1. Select the first player name - make sure it is bigger than 3 characters and smaller than 20 characters;
2. The first player gets to chose which token it wants to use it can be either "O" or "X"
3. Select the second player name following the instruction given on step 1;
4. The second player will get a token assigned automatically;
5. The game will begin. The Tic-Tac-Toe board will be printed and it will show numbers from 1 to 9;
6. To win this game one player must make a sequence of three tokens either on lines, columns or diagonals;
7. Choose the position where you want to place your first token, it must between 1 to 9;
8. After that, this position will be taken and the second player will take this turn;
9. The selected position can't be chosen twice;
10. The game will take turns until a player wins or no more positions are available on the board, in this case it will be a draw!

## Game construction

This is a tic-tac-toe game built with ruby and oop princible 
    In this game there are 3 main files 

    1- main.rb which is the file that's responsible for getting inputs from the user, outputing meesages and calling all the methods.
    2- player.rb this is a liberary that's responsable of storing players variables such as (name, token).
    3- game.rb which is responsible for the game methods, validations, comparisions and board manipulation.

    ---------------------------------------------------------------------------------------------------------------------

    In this project all the logic and manipulation is put in the files inside lib folder except for these that require consistant
    outputs.

    ---------------------------------------------------------------------------------------------------------------------

    the game consists of 6 steps:
    1- get players names and validate that they are unique (player1 name is different than player 2 name) and between 3-20 letters.
    2- get player1 token and validate that it's either X or O.
    3- set player2 token to the obesite value of player1's one.
    4- display the board and ask for a move.
    5- validating the given move that it's not already taken or that it's not between 1-9, this proccess runs for both players.
    6- cecking for win condition untill the first player playes 5 moves, if any player wins it displayes it, else it displays "it's a draw".


## Built With

- Ruby
- VSCode
- Rubocop

## Live Demo

To quickly see our project in action, visit the [live demo](https://repl.it/join/recaiufz-lirad) on repl.it. Type bin/main to execute the program.

## Getting Started

### Prerequisites

To get this project up and running, you must already have ruby installed on your computer.

### Installation

**To get this project set up on your local machine, follow these simple steps:**

1. Open Terminal.
2. Navigate to your desired location to download the contents of this repository.
3. Copy and paste the following code into the Terminal:
    git clone https://github.com/lirad/ruby-tic-tac-toe.git
4. Hit enter.
5. Once the repository has been cloned, navigate inside the repository and type:
    bin/main
    This will run the game and you will be able to play it using the terminal.
6. Have fun!

## Authors

👤 **Diego lirad**
- Github: [@lirad](https://github.com/lirad)
- LinkedIn: [@lirad](https://www.linkedin.com/in/diegoalira/)

👤 **Mahmoud Mohammad**

- Github: [@githubhandle](https://github.com/mahmoud717)
- Twitter: [@twitterhandle](https://twitter.com/mahmoud26369406)

## :handshake: Contributing

## Show your support
If you've read this far, you must like the project! Give us a :star:️!
## Acknowledgments
- This Project was part of an assignment available on The Odin Project.
- Our thanks to Microverse and all our peers and colleagues there.
## :memo: License
This project has no license
