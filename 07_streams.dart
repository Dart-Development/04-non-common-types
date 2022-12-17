import 'dart:async';

main() {
  final streamController = StreamController();

  streamController.stream.listen(
    (data) => print('Taking off! $data'),
    onError: (err) => print('Error! $err'),
    onDone: () => print('Mission Accomplished!'),
    cancelOnError: false,
  );

  streamController.sink.add('Apolo 11');
  streamController.sink.add('Apolo 12');
  streamController.sink.add('Apolo 13');
  streamController.sink.addError('Houston, we have a problem!');
  streamController.sink.add('Apolo 14');
  streamController.sink.add('Apolo 15');

  streamController.sink.close();

  print('End of main');
}
