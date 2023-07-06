import 'package:flutter/material.dart';
import 'package:whoop_triggerz/features/custom_icon_pack/icons.dart';
import 'package:whoop_triggerz/widgets/buttons/primary_button.dart';

class RecordContainer extends StatefulWidget {
  const RecordContainer({super.key});
  @override
  State<RecordContainer> createState() => _RecordContainerState();
}

class _RecordContainerState extends State<RecordContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 18),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(),
          borderBigButton(),
          backgroundBigButton(),
          imageBigButton(),
          musicNoteButton(),
          repeatKeyButton(),
        ],
      ),
    );
  }

  Positioned repeatKeyButton() {
    return Positioned(
      bottom: 0,
      right: 0,
      child: PrimaryButton(
        customIcon: MyFlutterApp.icon_repeat_key,
        onPressed: () {},
      ),
    );
  }

  Positioned musicNoteButton() {
    return Positioned(
      bottom: 0,
      left: 0,
      child: PrimaryButton(
        customIcon: MyFlutterApp.icon_music_note,
        onPressed: () {},
      ),
    );
  }

  Image imageBigButton() {
    return Image.asset(
      'assets/images/pastor.png',
      scale: 1.06,
    );
  }

  Container backgroundBigButton() {
    return Container(
      width: 234,
      height: 234,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            colors: [
              Color(0xFF65A7FF),
              Color(0xFF3B42F5),
            ],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            stops: [0.0, 1.0],
            tileMode: TileMode.mirror),
      ),
    );
  }

  Container borderBigButton() {
    return Container(
      width: 264,
      height: 264,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            colors: [
              Color(0xFFD1E1FF),
              Color(0xFFF4F8FF),
            ],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            stops: [0.0, 1.0],
            tileMode: TileMode.mirror),
      ),
    );
  }
}
