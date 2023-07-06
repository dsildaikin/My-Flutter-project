import 'package:flutter/material.dart';

class SelectModePBorW extends StatefulWidget {
  const SelectModePBorW({super.key});

  @override
  State<SelectModePBorW> createState() => _SelectModePBorWState();
}

class _SelectModePBorWState extends State<SelectModePBorW> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        praiseBreakButton(),
        centerIconButton(),
        worshipButton(),
      ],
    );
  }

  Text worshipButton() {
    return const Text(
      "Worship",
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),
    );
  }

  Container centerIconButton() {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      child: Image.asset('assets/images/button_easy_play.png'),
    );
  }

  Text praiseBreakButton() {
    return const Text(
      "Praise Break",
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),
    );
  }
}
