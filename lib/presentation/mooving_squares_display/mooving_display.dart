import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:running_square/presentation/cell/cell.dart';
import 'package:running_square/presentation/mooving_buttons/mooving.buttons.dart';

class MoovingDisplay extends StatefulWidget {
  MoovingDisplay({super.key, matrixSize})
      : _matrixSize = (matrixSize < 3 || matrixSize > 6) ? 3 : matrixSize {
    _initCells();
    cellsWidget = getCellsWidget();
  }

  late List<Widget> cellsWidget;

  int _xPosition = 0;
  int _yPosition = 0;

  void setPosition({required int x, required int y}) {
    _xPosition = x;
    _yPosition = y;
  }

  final int _matrixSize;
  final List<List<Cell>> cells = [];

  void _initCells() {
    List<Cell> row = [];
    for (int i = 0; i < _matrixSize; i++) {
      row = [];
      for (int j = 0; j < _matrixSize; j++) {
        row.add(Cell(
          xPosition: j,
          yPosition: i,
          isVisible: false,
        ));
      }
      cells.add(row);
    }
    cells[_yPosition][_xPosition].isVisible = true;
  }

  List<Widget> getCellsWidget() {
    List<Widget> newList = [];
    cells.forEach((row) => newList.add(Row(
          children: row,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        )));
    return newList;
  }

  @override
  State<MoovingDisplay> createState() => _MoovingDisplayState();
}

class _MoovingDisplayState extends State<MoovingDisplay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: widget.cellsWidget,
      ),
    );
  }
}
