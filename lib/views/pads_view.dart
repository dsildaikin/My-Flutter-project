import 'package:flutter/material.dart';
import 'package:whoop_triggerz/widgets/tools/app_bar.dart';
import 'package:whoop_triggerz/widgets/tools/bottom_buttons.dart';
import 'package:whoop_triggerz/widgets/tools/container_regime.dart';
import 'package:whoop_triggerz/widgets/tools/numpad.dart';
import 'package:whoop_triggerz/widgets/tools/slider_sound.dart';
import 'package:whoop_triggerz/widgets/tools/select_mode_pb_or_w.dart';
import 'package:whoop_triggerz/widgets/tools/transitions_to_modes.dart';

class PadsView extends StatefulWidget {
  static getRoute() {
    return PageRouteBuilder(
      transitionsBuilder: (_, animation, secondAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      pageBuilder: (_, __, ___) {
        return const PadsView();
      },
    );
  }

  const PadsView({Key? key}) : super(key: key);

  @override
  State<PadsView> createState() => _PadsViewState();
}

class _PadsViewState extends State<PadsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 35,
          left: 20,
          right: 20,
          bottom: 25,
        ),
        color: const Color(0xffd1e1fd),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CustomAppBar(),
            SelectModePBorW(),
            TransitionsToModes(),
            Numpad(),
            ContainerRegime(),
            BottomButtons(),
            SliderSound()
          ],
        ),
      ),
    );
  }
}
