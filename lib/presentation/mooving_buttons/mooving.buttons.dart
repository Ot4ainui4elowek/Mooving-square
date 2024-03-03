import 'package:flutter/material.dart';

class MoovingButtons extends StatefulWidget {
  MoovingButtons({super.key});
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
                onPressed: () => 0,
                child: const Icon(Icons.arrow_circle_up_outlined),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () => 0,
                child: const Icon(Icons.arrow_circle_left_outlined),
              ),
              FloatingActionButton(
                onPressed: () => 0,
                child: const Icon(Icons.arrow_circle_right_outlined),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () => 0,
                child: const Icon(Icons.arrow_circle_down_outlined),
              )
            ],
          ),
        ],
      ),
    );
  }
}
