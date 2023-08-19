void main(List<String> args) {
  print(doTypesMatch(1, 2));
  print(doTypesMatch(1, 1.6));
  print(doTypesMatch(1, 'Foo'));
  print(doTypesMatch('Foo', 'Bar'));
}

// bool doTypesMatch(Object a, Object b) {
//   return a.runtimeType == b.runtimeType;
// }

// bool doTypesMatch<TYPE1, TYPE2>(TYPE1 a, TYPE2 b) => TYPE1 == TYPE2;

bool doTypesMatch<L, R>(L a, R b) => L == R;
