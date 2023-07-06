import 'package:flutter/material.dart';
import 'package:whoop_triggerz/features/custom_icon_pack/icons.dart';
import 'package:whoop_triggerz/views/pads_view.dart';
import 'package:whoop_triggerz/widgets/buttons/primary_button.dart';

class TransitionsToModes extends StatefulWidget {
  const TransitionsToModes({super.key});

  @override
  State<TransitionsToModes> createState() => _TransitionsToModesState();
}

class _TransitionsToModesState extends State<TransitionsToModes> {
  bool _isPressedPadsButton = false;

  void updateStatePadsButton() {
    setState(() {
      Navigator.push(context, PadsView.getRoute());
      _isPressedPadsButton = !_isPressedPadsButton;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        keyButton(),
        switchButton(),
        padsButton(),
      ],
    );
  }

  GestureDetector switchButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 56,
        width: 183,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          gradient: const LinearGradient(
            colors: [Color(0xFFEAF6FF), Color(0xFFDDE6F6)],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            stops: [0.0, 1.0],
            tileMode: TileMode.mirror,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x4D000000),
              spreadRadius: 1,
              blurRadius: 6,
            ),
          ],
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(MyFlutterApp.icon_back),
            Text(
              "B",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            Icon(MyFlutterApp.icon_forward),
          ],
        ),
      ),
    );
  }

  PrimaryButton keyButton() {
    return PrimaryButton(
      customIcon: MyFlutterApp.icon_key,
      onPressed: () {},
    );
  }

  GestureDetector padsButton() {
    return GestureDetector(
      onTap: updateStatePadsButton,
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
        child: const Icon(
          Icons.apps_rounded,
          size: 35,
        ),
      ),
    );
  }
}
