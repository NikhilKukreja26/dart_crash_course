import 'package:collection/collection.dart' show UnmodifiableListView;

void main(List<String> args) {
  final names = ['Nikhil', 'Simran'];
  names.add('Sanket');
  try {
    final readOnlyList = UnmodifiableListView(names);
    readOnlyList.add('Tej');
  } catch (e) {
    print(e);
  }
}
