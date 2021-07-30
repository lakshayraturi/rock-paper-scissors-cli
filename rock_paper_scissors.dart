import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  final randomNumberGenerator = Random();
  while (true) {
    stdout.write('Rock, Paper, Scissors(r/p/s): ');
    final userInput = stdin.readLineSync();
    if (userInput == 'r' || userInput == 'p' || userInput == 's') {
      var userMove;

      switch (userInput) {
        case 'r':
          userMove = Move.rock;
          break;
        case 'p':
          userMove = Move.paper;
          break;
        case 's':
          userMove = Move.scissors;
          break;
      }

      var randomNumber = randomNumberGenerator.nextInt(3);
      var aiMove = Move.values[randomNumber];

      print('You played: $userMove');
      print('AI played: $aiMove');
      if (userMove == aiMove) {
        print('Draw');
      } else if ((userMove == Move.paper && aiMove == Move.rock) ||
          (userMove == Move.rock && aiMove == Move.scissors) ||
          (userMove == Move.scissors && aiMove == Move.paper)) {
        print('You won');
      } else {
        print('You lose');
      }
    } else if (userInput == 'q') {
      break;
    } else {
      print('Invalid move');
    }
  }
  print("Bye!");
}
