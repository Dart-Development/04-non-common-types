main() {
  // the future resolves a String
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    print('3 seconds later!');

    return 'Future return';
  });

  timeout.then(print);

  print('End of main');
}
