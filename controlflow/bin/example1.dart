void main(List<String> args) {
  const myName = 'Nikhil';
  const yourName = 'Sanket';

  if (myName == yourName) {
    print('We have the same name!');
  } else if (yourName == 'Sanket') {
    print('Hello, Sanket!');
  } else if (yourName == 'Sanket' && myName == 'Nikhil') {
    print('You are Sanket and I am Nikhil');
  } else {
    print('Something else');
  }
}
