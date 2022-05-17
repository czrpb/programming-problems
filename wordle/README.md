# Wordle

Wordle is a game where one is attempt to determine another's word via guesses and hints.

The hints are:

1. Correct guess in the correct place
2. Correct guess in the wrong place
3. Wrong guess

Generally the hints are given per letter, left-to-right.

## Example: `CATS`

### Guess: `CARS`

Hint per letter:

`C`: Correct
`A`: Correct
`R`: Incorrect
`S`: Correct

### Guess: `CAST`

Hint per letter:

`C`: Correct
`A`: Correct
`S`: Almost
`T`: Almost

### Guess: `SCAT`

Hint per letter:

`S`: Almost
`C`: Almost
`A`: Almost
`T`: Almost

## Example: `SAME`

### Guess: `SEAM`

Hint per letter:

`S`: Correct
`E`: Almost
`A`: Almost
`M`: Almost

### Guess: `TREE`

> **NOTE**: When giving hints for duplicate letters, prefer Correct over right-to-left order, then only Almost for the 1st occurrence.

Hint per letter:

`T`: Incorrect
`R`: Incorrect
`E`: Incorrect
`E`: Correct
