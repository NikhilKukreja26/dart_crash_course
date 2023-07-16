void main(List<String> args) {
  print(TeslaCars.values);
  print([...TeslaCars.values]..sort());
}

enum TeslaCars implements Comparable<TeslaCars> {
  modelY(weightInKg: 2.2),
  modelX(weightInKg: 3.2),
  model3(weightInKg: 1.2),
  modelZ(weightInKg: 4.2);

  final double weightInKg;

  const TeslaCars({
    required this.weightInKg,
  });

  @override
  int compareTo(TeslaCars other) => weightInKg.compareTo(other.weightInKg);
}
