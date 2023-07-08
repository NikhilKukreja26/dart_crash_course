import 'dart:io';

void main(List<String> args) {
  do {
    stdout.write('Enter your name or type "exit": ');
    final input = stdin.readLineSync();
    print(input);
    if (input == 'exit') {
      break;
    } else if (input == null || input.trim().isEmpty) {
      stdout.writeln('Invalid name. Try again!');
      continue;
    }

    switch (input.toLowerCase()) {
      case 'john':
      case 'jane':
        print('Hello $input. You have great name!');

      default:
        stdout.writeln('Hello $input');
    }
  } while (true);
}
