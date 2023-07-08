import 'dart:io';

void main(List<String> args) {
  do {
    stdout.write('Enter your age or type "exit": ');
    final input = stdin.readLineSync();
    print(input);
    if (input == 'exit') {
      break;
    } else if (input == null || input.trim().isEmpty) {
      stdout.writeln('Invalid age. Try again!');
      continue;
    }

    final age = int.tryParse(input);

    if (age == null) {
      stdout.writeln('Invalid age. Try again!');
      continue;
    }

    switch (age) {
      case 10:
        stdout.writeln('You are 10 years old. Great!');
      case 20:
        stdout.writeln('You are 20 years old. Still very young!');
      case 30:
        stdout.writeln('You are 30 years old. You are an adult!');
      default:
        stdout.writeln('You are $age years old.');
    }
  } while (true);
}
