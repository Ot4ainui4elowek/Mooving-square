import 'package:flutter/material.dart';
import 'package:running_square/presentation/mooving_squares_display/mooving_display.dart';

enum MooveType {
  up,
  down,
  left,
  right,
}

class MooverController {
  MooverController(MoovingDisplay display) : _display = display {
    _x = _display.xPosition;
    _y = _display.yPosition;
  }
  final MoovingDisplay _display;
  late int _x;
  late int _y;
  void moove(MooveType moove) {
    switch (moove) {
      case MooveType.up:
        if (_y - 1 >= 0) {
          _display.cells[_y][_x].isVisible = false;
          _display.cells[--_y][_x].isVisible = true;
          debugPrint('$_x $_y');
          break;
        } else {
          debugPrint('out of range');
        }
      case MooveType.down:
        if (_y + 1 < _display.matrixSize) {
          _display.cells[_y][_x].isVisible = false;
          _display.cells[++_y][_x].isVisible = true;
          debugPrint('$_x $_y');
          break;
        } else {
          debugPrint('out of range');
        }
      case MooveType.left:
        if (_x - 1 >= 0) {
          _display.cells[_y][_x].isVisible = false;
          _display.cells[_y][--_x].isVisible = true;
          debugPrint('$_x $_y');
          break;
        } else {
          debugPrint('out of range');
        }
      case MooveType.right:
        if (_x + 1 < _display.matrixSize) {
          _display.cells[_y][_x].isVisible = false;
          _display.cells[_y][++_x].isVisible = true;
          debugPrint('$_x $_y');
          break;
        } else {
          debugPrint('out of range');
        }
    }
  }
}
