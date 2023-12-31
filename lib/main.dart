import 'package:flutter/material.dart';
import 'package:whoop_triggerz/views/easy_play_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Whoop Triggerz',
      home: EasyPlayView(),
    );
  }
}
