import 'package:flutter/material.dart';
import 'package:tripui/resources/style/Style.dart';

class IconStar extends StatelessWidget {
  int _active;
  List<Widget> _icons = [];

  IconStar(int active) {
    this._active = active;

    this._setIconStar();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: this._icons,
    );
  }

  void _setIconStar() {
    for (var i = 0; i < 5; i++) {
      if (i < this._active) {
        this._icons.add(Icon(Icons.star, size: 17, color: primaryOrange));
      } else {
        this._icons.add(Icon(Icons.star, size: 17, color: primaruGrey));
      }
    }
  }
}
