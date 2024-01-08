import 'dart:async';

import 'package:flutter/material.dart';

import '../../global/values.dart';

abstract class View {
  static Views _initial = Views.trainer;
  static Views get initial => _initial;

  static StreamController<Views> _streamController = StreamController<Views>.broadcast();

  static Stream<Views> get stream => _streamController.stream;

  static void change(BuildContext context, Views value) {
    _initial = value;
    _streamController.add(value);
  }

  static void dispose() => _streamController.close();
}
