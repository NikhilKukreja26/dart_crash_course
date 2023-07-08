void main(List<String> args) {
  const names = ['Nikhil', 'Sanket', 'Tej', 'Flora'];
  for (int i = 0; i < names.length; i++) {
    print(names[i]);
  }

  print('-------------');

  for (var i = names.length - 1; i >= 0; i--) {
    print(names[i]);
  }
  print('-------------');

  for (int i = 0; i < names.length; i += 2) {
    print(names[i]);
  }
}
