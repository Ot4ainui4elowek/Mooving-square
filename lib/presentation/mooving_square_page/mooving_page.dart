import 'package:flutter/material.dart';
import 'package:running_square/presentation/moover_controller/moover_controller.dart';
import 'package:running_square/presentation/mooving_buttons/mooving.buttons.dart';
import 'package:running_square/presentation/mooving_squares_display/mooving_display.dart';

class MoovingPage extends StatefulWidget {
  final title = 'Mooving the square';
  MoovingPage({super.key}) {
    _mooverController = MooverController(_moovingDisplay);
    _moovingButtons = MoovingButtons(controller: _mooverController);
  }
  final MoovingDisplay _moovingDisplay = MoovingDisplay(
    matrixSize: 6,
  );
  late final MoovingButtons _moovingButtons;

  late final MooverController _mooverController;

  @override
  State<MoovingPage> createState() => _MoovingPageState();
}

class _MoovingPageState extends State<MoovingPage> {
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
          children: [
            widget._moovingDisplay,
            widget._moovingButtons,
          ],
        ));
  }
}
