import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int randomNumber = random.nextInt(10) + 1;
  late int guessedNumber;
  int tries = 0;
  print('Guess a number between 1 and 10:');
  print('👻You have 3 trails👻');

  for (var i = 0; i < 3; i++) {
    guessedNumber = int.parse(stdin.readLineSync().toString());
    if (guessedNumber == randomNumber) {
      print('✅✅✅ yayy, you got it. The number is $randomNumber ✅✅✅');
      break;
    } else {
      tries++;
      if (guessedNumber < 1 || guessedNumber > 10) {
        if (tries == 3) {
          print('Oops! You lost, The number was $randomNumber');
          print('🧩🧩🧩 GAME OVER 🧩🧩🧩');
          break;
        }
        print('Heyy, Enter a number between 1 and 10!');
        print('Trial: $tries/3');
      } else if (tries <= 2) {
        print('🧩 Wrong, try again 🧩');
        print('Trial: $tries/3');
      } else if (tries == 3) {
        print('Oops! You lost, The number was $randomNumber');
        print('🧩🧩🧩 GAME OVER 🧩🧩🧩');
      }
    }
  }
}
