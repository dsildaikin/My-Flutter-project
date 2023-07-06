import 'package:flutter/material.dart';
import 'package:whoop_triggerz/widgets/buttons/number_button.dart';

class Numpad extends StatefulWidget {
  const Numpad({super.key});

  @override
  State<Numpad> createState() => _NumpadState();
}

class _NumpadState extends State<Numpad> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumberButton(text: '1'),
              NumberButton(text: '2'),
              NumberButton(text: '3'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumberButton(text: '4'),
              NumberButton(text: '5'),
              NumberButton(text: '6'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumberButton(text: '7'),
              NumberButton(text: '8'),
              NumberButton(text: '9'),
            ],
          ),
        ],
      ),
    );
  }
}
