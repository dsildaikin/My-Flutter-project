import 'package:flutter/material.dart';

class ContainerRegime extends StatefulWidget {
  const ContainerRegime({Key? key}) : super(key: key);

  @override
  State<ContainerRegime> createState() => _ContainerRegimeState();
}

class _ContainerRegimeState extends State<ContainerRegime> {
  bool _buttonNormalPressed = true;
  bool _buttonSpecialPressed = false;

  void _handleButtonNormalPressed() {
    setState(() {
      if (!_buttonNormalPressed) {
        _buttonNormalPressed = true;
      }
      _buttonSpecialPressed = false;
    });
  }

  void _handleButtonSpecialPressed() {
    setState(() {
      if (!_buttonSpecialPressed) {
        _buttonSpecialPressed = true;
      }
      _buttonNormalPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 82,
      width: 327,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buttonNormal(),
          buttonSpecial(),
        ],
      ),
    );
  }

  GestureDetector buttonNormal() {
    return GestureDetector(
      onTap: _handleButtonNormalPressed,
      child: Container(
        height: 45,
        width: 134,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          gradient: (_buttonNormalPressed
              ? const LinearGradient(
                  colors: [Color(0xFF3B42F5), Color(0xFF65A7FF)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                )
              : const LinearGradient(
                  colors: [
                    Color(0xFFEAF6FF),
                    Color(0xFFDDE6F6),
                  ],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                )),
          boxShadow: const [
            BoxShadow(
              color: Color(0xfff3f7ff),
              spreadRadius: 2,
              blurRadius: 1,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: Center(
          child: Text(
            "Normal",
            style: TextStyle(
              fontSize: 18,
              color: (_buttonNormalPressed
                  ? Colors.white
                  : const Color(0x801e2c48)),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector buttonSpecial() {
    return GestureDetector(
      onTap: _handleButtonSpecialPressed,
      child: Container(
        height: 45,
        width: 134,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          gradient: (_buttonSpecialPressed
              ? const LinearGradient(
                  colors: [Color(0xFF3B42F5), Color(0xFF65A7FF)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                )
              : const LinearGradient(
                  colors: [
                    Color(0xFFEAF6FF),
                    Color(0xFFDDE6F6),
                  ],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                )),
          boxShadow: const [
            BoxShadow(
              color: Color(0xfff3f7ff),
              spreadRadius: 2,
              blurRadius: 1,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: Center(
          child: Text(
            "Special",
            style: TextStyle(
              fontSize: 18,
              color: (_buttonSpecialPressed
                  ? Colors.white
                  : const Color(0x801e2c48)),
            ),
          ),
        ),
      ),
    );
  }
}
