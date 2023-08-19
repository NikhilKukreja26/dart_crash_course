void main(List<String> args) {
  const JSON<String> json = {
    'name': 'Nikhil',
    'address': '123 Main st',
  };

  print(json);
}

typedef JSON<T> = Map<String, T>;
