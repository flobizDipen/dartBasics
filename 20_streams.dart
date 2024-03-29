import 'dart:async';

void main() {
  final numberGenerator = NumberGenerator();

  StreamSubscription sub1 = numberGenerator.stream.listen((event) {
    print("sub1 : $event");
  });

  late StreamSubscription sub2;
  Future.delayed(Duration(seconds: 5), () {
    sub2 = numberGenerator.stream.listen((event) {
      print("sub2 : ${event * event}");
    });
  });

  Future.delayed(Duration(seconds: 10), () {
    sub1.cancel();
    sub2.cancel();
  });
}

class NumberGenerator {
  int _counter = 0;

  StreamController<int> _controller = StreamController<int>.broadcast();

  Stream<int> get stream => _controller.stream;

  NumberGenerator() {
    final Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _controller.add(_counter);
      _counter++;
    });

    Future.delayed(Duration(seconds: 10), () {
      //Close stream and timer after 10 seconds.
      timer.cancel();
      _controller.close();
    });
  }
}
