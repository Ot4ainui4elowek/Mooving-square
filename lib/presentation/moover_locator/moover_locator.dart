import 'package:running_square/presentation/cell/cell.dart';
import 'package:running_square/presentation/moover_observer/moover_observer.dart';
import 'package:running_square/presentation/mooving_squares_display/mooving_display.dart';

class MooverLocator {
  MooverLocator(display) : _display = display {
    _x = _display.xPosition;
    _y = _display.yPosition;
  }
  final MoovingDisplay _display;
  late int _x;
  late int _y;

  Cell? canBeMooved(MooveType moove) {
    switch (moove) {
      case MooveType.up:
        if (_y - 1 >= 0) {
          return Cell(xPosition: _x, yPosition: --_y, isVisible: true);
        }
      case MooveType.down:
        if (_y + 1 < _display.matrixSize) {
          return Cell(xPosition: _x, yPosition: ++_y, isVisible: true);
        }
      case MooveType.left:
        if (_x - 1 >= 0) {
          return Cell(xPosition: --_x, yPosition: _y, isVisible: true);
        }
      case MooveType.right:
        if (_x + 1 < _display.matrixSize) {
          return Cell(xPosition: ++_x, yPosition: _y, isVisible: true);
        }
    }
  }
}
