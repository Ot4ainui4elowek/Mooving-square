import 'package:flutter/material.dart';
import 'package:running_square/presentation/moover_locator/moover_locator.dart';
import 'package:running_square/presentation/mooving_squares_display/mooving_display.dart';

enum MooveType {
  up,
  down,
  left,
  right,
}

class MooverObserver {
  MooverObserver(display) : _display = display {
    _moverLocator = MooverLocator(_display);
  }

  late final MooverLocator _moverLocator;
  final MoovingDisplay _display;

  void moove(MooveType moove) {
    final newSquare = _moverLocator.canBeMooved(moove);
    if (newSquare != null) {
      _display.moove(x: newSquare.x, y: newSquare.y);
      debugPrint('${newSquare.x} ${newSquare.y}');
    } else {
      debugPrint('out of range');
    }
  }
}
