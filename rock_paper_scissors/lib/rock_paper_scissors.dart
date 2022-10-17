import 'dart:io';
import 'dart:math';

final _random = Random();

enum _Moves { rock, paper, scissors }

enum _GameResults { player, computer, draw }

var _gameResultMessages = <_GameResults, String>{
  _GameResults.player: 'You win! 🥇',
  _GameResults.computer: 'You lose! 😵',
  _GameResults.draw: "It's draw 🫤"
};

void startGame() {
  print('Select one: rock, paper, scissors');
  var playerMoveInput = stdin.readLineSync();
  var playerMove = _getPlayerMove(playerMoveInput);
  print('You played ${playerMove.name}');

  var computerMove = _getComputerMove();
  print('Computer played ${computerMove.name}');

  var gameResult = _compareMovesAndGiveGameResult(playerMove, computerMove);
  _printGameResult(gameResult);
}

_Moves _getPlayerMove(String? playerMoveInput) {
  _Moves? move;

  while (playerMoveInput == null || move == null) {
    switch (playerMoveInput) {
      case 'rock':
        move = _Moves.rock;
        break;
      case 'paper':
        move = _Moves.paper;
        break;
      case 'scissors':
        move = _Moves.scissors;
        break;
      default:
        print('Invalid selection');
        playerMoveInput = null;
        move = null;
        break;
    }
  }

  return move;
}

_Moves _getComputerMove() {
  var randomMoveIndex = _random.nextInt(3);
  return _Moves.values[randomMoveIndex];
}

_GameResults _compareMovesAndGiveGameResult(
    _Moves playerMove, _Moves computerMove) {
  if (playerMove == _Moves.paper && computerMove == _Moves.rock ||
      playerMove == _Moves.rock && computerMove == _Moves.scissors ||
      playerMove == _Moves.scissors && computerMove == _Moves.paper) {
    return _GameResults.player;
  }
  if (computerMove == _Moves.paper && playerMove == _Moves.rock ||
      computerMove == _Moves.rock && playerMove == _Moves.scissors ||
      computerMove == _Moves.scissors && playerMove == _Moves.paper) {
    return _GameResults.computer;
  }

  return _GameResults.draw;
}

void _printGameResult(_GameResults gameResult) =>
    print(_gameResultMessages[gameResult]);
