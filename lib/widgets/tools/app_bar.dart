import 'package:flutter/material.dart';
import 'package:whoop_triggerz/features/custom_icon_pack/icons.dart';
import 'package:whoop_triggerz/views/easy_play_view.dart';
import 'package:whoop_triggerz/widgets/buttons/primary_button.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _isFavorited = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        backButton(context),
        title(),
        favoriteButton(),
      ],
    );
  }

  Text title() {
    return const Text(
      "Church Flow",
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
    );
  }

  PrimaryButton backButton(BuildContext context) {
    return PrimaryButton(
      customIcon: MyFlutterApp.icon_back,
      onPressed: () {
        setState(() {
          Navigator.push(context, EasyPlayView.getRoute());
        });
      },
    );
  }

  GestureDetector favoriteButton() {
    return GestureDetector(
      onTap: _toggleFavorite,
      child: Container(
        height: 56,
        width: 56,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Color(0xFFEAF6FF), Color(0xFFDDE6F6)],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x4D000000),
              spreadRadius: 1,
              blurRadius: 6,
            ),
          ],
        ),
        child: (_isFavorited
            ? const Icon(MyFlutterApp.icon_favorite_on)
            : const Icon(MyFlutterApp.icon_favorite_off)),
      ),
    );
  }
}
