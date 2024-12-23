import 'dart:async';

class MyBloc {
  StreamController<int> streamController = StreamController<int>();

  StreamSink get streamSink => streamController.sink;
  Stream<int> get stream => streamController.stream;
}
