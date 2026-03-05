# LinuXpert – Gamified Linux Quiz (Bash)

## Overview

LinuXpert is a **command-line quiz game built using Bash scripting**.
The game tests users’ **Linux knowledge through multiple-choice questions** across different difficulty levels.

Players must answer questions correctly to gain **XP (experience points)** and progress through levels while managing limited lives.

## Features

* Interactive command-line quiz
* Three difficulty levels:

  * Easy
  * Medium
  * Hard
* Randomized questions using `shuf`
* XP (experience points) reward system
* Life system (player loses lives for wrong answers)
* Gamified experience with levels and progression

## Technologies Used

* Bash Shell Scripting
* Linux Command Line
* `shuf` command for random question selection

## Game Flow

1. The player enters a username.
2. The quiz starts with the **Easy level**.
3. Each level asks **5 random questions**.
4. Correct answers earn XP.
5. Wrong answers reduce lives.
6. If lives reach zero → Game Over.
7. Passing a level unlocks the next one.

## Project Structure

project.sh → main game script
easy.sh → easy level questions
medium.sh → medium level questions
hard.sh → hard level questions
README.md → project documentation

## How to Run

1. Open a Linux terminal.
2. Navigate to the project folder.
3. Run the script:

bash project.sh

## Example Gameplay

* Correct answer → XP gained
* Wrong answer → Life lost
* Complete all levels → Become **LinuXpert Champion**

## Author

Riya Thakur
