import 'package:collection/collection.dart';

void main(List<String> args) {
  final info = {
    'name': 'Nikhil',
    'age': 27,
    'weight': 90,
  };
  info['location'] = 'India';

  try {
    final readOnlyMap = UnmodifiableMapView(info);
    readOnlyMap['state'] = 'Maharashtra';
  } catch (e) {
    print(e);
  }
}
