import 'dart:async';

class MyBloc {
  StreamController<int> stateStreamController = StreamController<int>();

  StreamSink get stateStreamSink => stateStreamController.sink;
  Stream<int> get stateStream => stateStreamController.stream;
}
