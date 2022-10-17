import 'package:rock_paper_scissors/rock_paper_scissors.dart' as game_engine;

void main(List<String> arguments) {
  while (true) {
    game_engine.startGame();
    print('Press CTRL + C for exit the game.');
  }
}
