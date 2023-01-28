void main(List<String> args) {
  try {
    final String? firstName = null;
    print(firstName!);
  } catch (e) {
    print(e);
  }
}
