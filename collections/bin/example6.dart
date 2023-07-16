void main(List<String> args) {
  final names = ['Nikhil', 'Tej', 'Sanket', 'Flora', 'Simran', 'Alka'];
  final upperCaseNames = names.map((name) {
    print('Map got called');
    return name.toUpperCase();
  });

  for (final name in upperCaseNames.take(5)) {
    print(name);
  }
}
