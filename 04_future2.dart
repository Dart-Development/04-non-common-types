import 'dart:io';

main() {
  // OSX y Linux
  // File file = new File(Directory.current.path + "/assets/people.txt");

  // Windows
  File file = new File(Directory.current.path + "\\assets\\people.txt");

  Future<String> f = file.readAsString();

  f.then(print);

  print('End of main');
}
