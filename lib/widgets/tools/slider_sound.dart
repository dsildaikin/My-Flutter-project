import 'package:flutter/material.dart';
import 'package:whoop_triggerz/features/custom_icon_pack/icons.dart';

class SliderSound extends StatefulWidget {
  const SliderSound({Key? key}) : super(key: key);

  @override
  State<SliderSound> createState() => _SliderSoundState();
}

class _SliderSoundState extends State<SliderSound> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _currentSliderValue == 0
            ? const Expanded(
                child: Icon(MyFlutterApp.button_volume_off),
              )
            : const Expanded(
                child: Icon(MyFlutterApp.button_volume_on),
              ),
        Expanded(
          flex: 20,
          child: Slider(
            value: _currentSliderValue,
            min: 0,
            max: 100,
            activeColor: const Color(0xff5c90fd),
            inactiveColor: const Color(0x330f3581),
            onChanged: (value) => setState(() {
              _currentSliderValue = value;
            }),
          ),
        ),
      ],
    );
  }
}
