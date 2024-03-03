import 'package:flutter/material.dart';
import 'package:running_square/presentation/mooving_buttons/mooving.buttons.dart';
import 'package:running_square/presentation/mooving_squares_display/mooving_display.dart';

class MoovingPageScreen extends StatefulWidget {
  final title = 'Mooving the square';
  MoovingPageScreen({super.key});
  final MoovingDisplay _moovingDisplay = MoovingDisplay(
    matrixSize: 6,
  );
  final MoovingButtons _moovingButtons = MoovingButtons();

  @override
  State<MoovingPageScreen> createState() => _MoovingPageScreenState();
}

class _MoovingPageScreenState extends State<MoovingPageScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: theme.colorScheme.inversePrimary,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [widget._moovingDisplay, widget._moovingButtons],
        ));
  }
}
