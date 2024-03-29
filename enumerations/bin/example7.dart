void main(List<String> args) {
  AnimalType.cat
    ..jump()
    ..run();
  AnimalType.dog
    ..jump()
    ..run();
  AnimalType.rabbit
    ..jump()
    ..run();
}

enum AnimalType {
  cat,
  dog,
  rabbit;

  void run() {
    print('$this is Running.....!');
  }
}

extension Jump on AnimalType {
  void jump() {
    print('$this is Jumping.....!');
  }
}
