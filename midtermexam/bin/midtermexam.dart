import 'dart:io';
import "dart:math";

void main() {

  var botScore = 0;
  var userScore = 0;

  stdout.writeln('How many rounds do you want?');
  int numberOfRounds = int.parse(stdin.readLineSync());

  for (var i = 0; i < numberOfRounds; i++) {
    var roundNumber = i + 1;
    print('Round $roundNumber');
    stdout.writeln('Papel, Gunting, Bato! What is your Pick?  ');
    String pick = stdin.readLineSync();

    pick = pick.toLowerCase();

    String gunting = "gunting";
    String papel = "papel";
    String bato = "bato";

    var list = [papel, gunting, bato];
    final random = new Random();
    var element = list[random.nextInt(list.length)];
    print(' $element');

    if (pick == element){
      print("Tie");
    } else {
      if (pick == gunting) {
        if (element == bato) {
          botScore += 1;
          print("You lose");
        } else {
          userScore += 1;
          print("You win");
        }
      } else if (pick == bato) {
        if (element == papel) {
          botScore += 1;
          print("You lose");
        } else {
          userScore += 1;
          print("You win");
        }
      } else if (pick == papel) {
        if (element == gunting) {
          botScore += 1;
          print("You lose");
        } else {
          userScore += 1;
          print("You win");
        }
      }
    }
  }
  if (botScore > userScore){
    print ('You Lose! Bot: $botScore, You: $userScore');}
  else if (botScore == userScore){
    print  ('Tie! Bot: $botScore, You: $userScore');}
  else {
    print('You win! Bot:$botScore, You: $userScore');}

}
	