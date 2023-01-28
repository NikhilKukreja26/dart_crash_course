void main(List<String> args) {
  String? lastName;

  void changeName() {
    lastName = 'Bar';
  }

  changeName();

  if (lastName?.contains('Bar') ?? false) {
    print('Last name contains Bar');
  }

  if (lastName?.contains('Bar') == true) {
    print('Last name contains Bar');
  }
}
