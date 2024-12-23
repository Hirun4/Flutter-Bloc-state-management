import 'dart:async';

class MyBloc {
  final StreamController<int> _stateStreamController = StreamController<int>();

  StreamSink get stateStreamSink => _stateStreamController.sink;
  Stream<int> get stateStream => _stateStreamController.stream;

  final StreamController<int> _eventStreamController = StreamController<int>();

  StreamSink get eventStreamSink => _eventStreamController.sink;
  Stream<int> get eventStream => _eventStreamController.stream;

  MyBloc() {
    eventStream.listen((event) {
      print(event);
      buissinessLogic(event);
      stateStreamSink.add(event);
    });
  }

  void buissinessLogic(event) {
    event++;
  }
}

abstract class Event {}

class IncrementEvent extends Event {
  int value;
  IncrementEvent({required this.value});
}
