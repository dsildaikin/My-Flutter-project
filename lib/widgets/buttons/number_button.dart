import 'package:flutter/material.dart';

class NumberButton extends StatefulWidget {
  const NumberButton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  State<NumberButton> createState() => _NumberButtonState();
}

class _NumberButtonState extends State<NumberButton> {
  bool _isPressed = false;

  void _toggleButton() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleButton,
      child: Container(
        height: 90,
        width: 90,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Color(0xFFD6E2F8),
              Color(0xFFF3F7FF),
            ],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            stops: [0.0, 1.0],
            tileMode: TileMode.mirror,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.white12,
              spreadRadius: 1,
              blurRadius: 1,
            ),
          ],
        ),
        child: _isPressed
            ? pressedBackgroundButton()
            : notPressedBackgroundButton(),
      ),
    );
  }

  Center notPressedBackgroundButton() {
    return Center(
      child: Container(
        width: 78,
        height: 78,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Color(0xFFCBDEFF),
              Color(0xFFA0BAE8),
            ],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            stops: [0.0, 1.0],
            tileMode: TileMode.mirror,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.white12,
              spreadRadius: 1,
              blurRadius: 1,
            ),
          ],
        ),
        child: Center(
          child: Text(
            widget.text,
            style: const TextStyle(
              fontSize: 35,
            ),
          ),
        ),
      ),
    );
  }

  Center pressedBackgroundButton() {
    return Center(
      child: Container(
        width: 78,
        height: 78,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Color(0xFF3B42F5),
              Color(0xFF65A7FF),
            ],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            stops: [0.0, 1.0],
            tileMode: TileMode.mirror,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.white12,
              spreadRadius: 1,
              blurRadius: 1,
            ),
          ],
        ),
        child: Center(
          child: Text(
            widget.text,
            style: const TextStyle(
              fontSize: 35,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
