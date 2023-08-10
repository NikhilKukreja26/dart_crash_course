void main(List<String> args) {
  Human().run();
}

class HasFeet {
  const HasFeet();
}

mixin CanRun on HasFeet {
  void run() {
    print('$runtimeType is running');
  }
}

class Human extends HasFeet with CanRun {
  const Human();
}

class HasNoFeet {
  const HasNoFeet();
}

class Fish extends HasNoFeet {
  const Fish();
}
