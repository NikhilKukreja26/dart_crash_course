void main(List<String> args) {
  final momAndDad = {
    'mom': Person(),
    'dad': Person(),
  };

  final brotherAndSisterAndMyFishy = {
    'brother': Person(),
    'sister': Person(),
    'Fishy': Fish(),
  };

  final allValues = [
    momAndDad,
    brotherAndSisterAndMyFishy,
  ];

  describe(allValues);
}

typedef BreathingThings<T extends CanBreathe> = Map<String, T>;

void describe(Iterable<BreathingThings> values) {
  for (final value in values) {
    for (final keyAndValue in value.entries) {
      print('Will call breathe() on ${keyAndValue.key}');
      keyAndValue.value.breathe();
    }
  }
}

mixin CanBreathe {
  void breathe();
}

class Person with CanBreathe {
  @override
  void breathe() {
    print('Person is breathing...');
  }
}

class Fish with CanBreathe {
  @override
  void breathe() {
    print('Fish is breathing...');
  }
}
