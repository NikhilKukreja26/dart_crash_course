void main(List<String> args) {
  const info = {
    'name': 'Nikhil',
    'age': 27,
    'email': 'kukrejanikhil25@gmail.com',
    'height': 5.10,
    'isMarried': false,
  };

  for (final entry in info.entries) {
    print('${entry.key} : ${entry.value}');
  }
}
