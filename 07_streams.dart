import 'dart:async';

main() {
  // broadcast allows the stream to be listened multiple times
  final streamController = new StreamController<String>.broadcast();

  streamController.stream.listen(
    (data) => print('Taking off! $data'),
    onError: (err) => print('Error! $err'),
    onDone: () => print('Mission Accomplished!'),
    cancelOnError: false,
  );

  streamController.stream.listen(
    (data) => print('Taking off Stream 2! $data'),
    onError: (err) => print('Error Stream 2! $err'),
    onDone: () => print('Mission Accomplished Stream 2!'),
    cancelOnError: false,
  );

  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apolo 12');
  streamController.sink.add('Apolo 13');
  streamController.sink.addError('Houston, we have a problem!');
  streamController.sink.add('Apolo 14');
  streamController.sink.add('Apolo 15');

  streamController.sink.close();

  print('End of main');
}
