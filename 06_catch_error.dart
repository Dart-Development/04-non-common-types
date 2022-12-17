main() {
  // the future resolves a String
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    if (1 == 1) {
      throw 'Help! This thing exploted!';
    }

    return 'Future return';
  });

  timeout.then(print).catchError((err) => print(err));

  print('End of main');
}
