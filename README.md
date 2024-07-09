
# Pacman Game in x86 Assembly Language (MASM)

Welcome to the Pacman Game repository, a classic arcade game recreated using x86 Assembly Language with MASM (Microsoft Macro Assembler). This project leverages the Irvine library and macros to bring the nostalgic Pacman experience to life, showcasing the power and elegance of low-level programming.


## Installation

Unzip and include the above provided Irvine32 library in your project. Ensure the Irvine32 library is correctly referenced in your project settings.

```bash
  cd https://github.com/sarim-01/Pacman-x86-Assembly-Language
```
- Download & execute the file:

```bash
  https://github.com/sarim-01/Pacman-x86-Assembly-Language/blob/main/pacman.asm
```

## Usage/Examples
In my game, Pacman progresses to the next level after collecting a specified amount of food. By default, the thresholds are set to 10, 15, and 20 for levels 1, 2, and 3, respectively. You can easily customize these values by assigning your desired numbers to the "points" , "points2" , and "points3" variables in the code. This allows you to tailor the game's difficulty to your preference.

- for level 1:
```javascript
cmp points, 10
```

- for level 2:
```javascript
cmp points2, 15
```

- for level 3:
```javascript
cmp points3, 20
```

## Features
- The Pac-Man game includes three levels, each with increasing difficulty.
- Navigate Pacman through a maze, collect pellets, and avoid ghosts.
- Use A, W, S, D keys to control Pacman's movements.
- Keep track of your score as you collect pellets and fruits.
- Basic ghost movements to challenge the player.
- Well-organized code with reusable macros and functions.


## Screenshots
- Home page

![App Screenshot](https://github.com/sarim-01/Pacman-x86-Assembly-Language/assets/174796399/3c0e3b51-ec2e-400b-b9f7-9bcde1a16cc6)

- Menu

![App Screenshot](https://github.com/sarim-01/Pacman-x86-Assembly-Language/assets/174796399/4bd038fc-7a9f-4c62-a0fb-8f98eaa840dd)

- Instructions

![App Screenshot](https://github.com/sarim-01/Pacman-x86-Assembly-Language/assets/174796399/ebc7fcdb-f389-4e2c-b2fd-252f7ec5b05f)

- Level 1

![App Screenshot](https://github.com/sarim-01/Pacman-x86-Assembly-Language/assets/174796399/873fe9e6-c6af-4024-aad4-cdc0a3345fb4)

- Level 2

![App Screenshot](https://github.com/sarim-01/Pacman-x86-Assembly-Language/assets/174796399/8b82fd7c-773f-4862-befc-33190f9bde2b)

- Level 3

![App Screenshot](https://github.com/sarim-01/Pacman-x86-Assembly-Language/assets/174796399/27efcdf3-47d5-4781-a8ab-2fa91daed4e5)


## Contributing

Contributions are always welcome!

See `contributing.md` for ways to get started.
