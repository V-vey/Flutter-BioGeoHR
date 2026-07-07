import 'dart:async';

class StopwatchService {
  final Stopwatch _stopwatch = Stopwatch();
  Stream<int> get elapsedTime => Stream.periodic(Duration(milliseconds: 10), (_) => _stopwatch.elapsed.inMilliseconds).takeWhile((_) => _stopwatch.isRunning);

  void start() {
    _stopwatch.start();
  }

  void stop() {
    _stopwatch.stop();
  }

  void reset() {
    _stopwatch.reset();
  }
}