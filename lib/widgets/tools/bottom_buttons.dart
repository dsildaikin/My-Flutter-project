import 'package:flutter/material.dart';

class BottomButtons extends StatefulWidget {
  const BottomButtons({Key? key}) : super(key: key);

  @override
  State<BottomButtons> createState() => _BottomButtonsState();
}

class _BottomButtonsState extends State<BottomButtons> {
  bool _buttonShoutStartPressed = false;
  bool _buttonFadePressed = false;
  bool _buttonTalkMusicPressed = true;

  void _handleButtonShoutStartPressed() {
    setState(() {
      if (!_buttonShoutStartPressed) {
        _buttonShoutStartPressed = true;
      }
      _buttonFadePressed = false;
      _buttonTalkMusicPressed = false;
    });
  }

  void _handleButtonFadePressed() {
    setState(() {
      if (!_buttonFadePressed) {
        _buttonFadePressed = true;
      }
      _buttonShoutStartPressed = false;
      _buttonTalkMusicPressed = false;
    });
  }

  void _handleButtonTalkMusicPressed() {
    setState(() {
      if (!_buttonTalkMusicPressed) {
        _buttonTalkMusicPressed = true;
      }
      _buttonShoutStartPressed = false;
      _buttonFadePressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: _handleButtonShoutStartPressed,
          child: Container(
            height: 56,
            width: 113,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              gradient: (_buttonShoutStartPressed
                  ? const LinearGradient(
                      colors: [
                        Color(0xFF3B42F5),
                        Color(0xFF65A7FF),
                      ],
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
                "Shout Start",
                style: TextStyle(
                  fontSize: 18,
                  color: (_buttonShoutStartPressed
                      ? Colors.white
                      : const Color(0x801e2c48)),
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: _handleButtonFadePressed,
          child: Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: (_buttonFadePressed
                  ? const LinearGradient(
                      colors: [
                        Color(0xFF3B42F5),
                        Color(0xFF65A7FF),
                      ],
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
                'Fade',
                style: TextStyle(
                  fontSize: 18,
                  color: (_buttonFadePressed
                      ? Colors.white
                      : const Color(0x801e2c48)),
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: _handleButtonTalkMusicPressed,
          child: Container(
            height: 56,
            width: 113,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              gradient: (_buttonTalkMusicPressed
                  ? const LinearGradient(
                      colors: [
                        Color(0xFF3B42F5),
                        Color(0xFF65A7FF),
                      ],
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
                "Talk Music",
                style: TextStyle(
                  fontSize: 18,
                  color: (_buttonTalkMusicPressed
                      ? Colors.white
                      : const Color(0x801e2c48)),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
