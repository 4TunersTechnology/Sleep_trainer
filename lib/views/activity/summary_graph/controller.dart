import 'dart:async';

class GraphController {
  static StreamController<String> _controller;
  static Stream<String> get stream => _controller.stream;

  // Flag to track initialization status
  static bool _isInitialized = false;
  static bool get isInitialized => _isInitialized;

  static void init() {
    _controller = StreamController.broadcast();
    _isInitialized = true; // Set initialization flag to true
  }

  static void dispose() {
    _controller.close();
  }

  static void change(String mode) {
    _controller.add(mode);
  }
}
