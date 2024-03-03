import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cell extends StatelessWidget {
  Cell(
      {super.key,
      required xPosition,
      required yPosition,
      required this.isVisible})
      : _xPosition = xPosition,
        _yPosition = yPosition;

  final _xPosition;
  final _yPosition;

  bool isVisible;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.all(5),
      color: isVisible ? theme.colorScheme.inversePrimary : Colors.amber,
      child: Text('$_xPosition $_yPosition'),
    );
  }
}
