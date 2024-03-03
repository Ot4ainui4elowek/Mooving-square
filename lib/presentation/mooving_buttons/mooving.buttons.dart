import 'package:flutter/material.dart';
import 'package:running_square/presentation/moover_controller/moover_controller.dart';

class MoovingButtons extends StatefulWidget {
  const MoovingButtons({super.key, required controller})
      : _controller = controller;

  final MooverController _controller;

  @override
  State<MoovingButtons> createState() => _MoovingButtonsState();
}

class _MoovingButtonsState extends State<MoovingButtons> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width / 2;
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      width: size,
      height: size,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () => widget._controller.moove(MooveType.up),
                child: const Icon(Icons.arrow_circle_up_outlined),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () => widget._controller.moove(MooveType.left),
                child: const Icon(Icons.arrow_circle_left_outlined),
              ),
              FloatingActionButton(
                onPressed: () => widget._controller.moove(MooveType.right),
                child: const Icon(Icons.arrow_circle_right_outlined),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () => widget._controller.moove(MooveType.down),
                child: const Icon(Icons.arrow_circle_down_outlined),
              )
            ],
          ),
        ],
      ),
    );
  }
}
