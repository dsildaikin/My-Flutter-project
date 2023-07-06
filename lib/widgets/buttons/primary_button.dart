import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {this.customSize,
      required this.onPressed,
      required this.customIcon,
      Key? key})
      : super(key: key);

  final VoidCallback onPressed;
  final IconData customIcon;
  final double? customSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 56,
        width: 56,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              colors: [Color(0xFFEAF6FF), Color(0xFFDDE6F6)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              stops: [0.0, 1.0],
              tileMode: TileMode.mirror),
          boxShadow: [
            BoxShadow(
              color: Color(0x4D000000),
              spreadRadius: 1,
              blurRadius: 6,
            ),
          ],
        ),
        child: Icon(
          customIcon,
          size: customSize,
        ),
      ),
    );
  }
}
