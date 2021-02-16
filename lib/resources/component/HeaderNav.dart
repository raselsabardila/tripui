import 'package:flutter/material.dart';
import 'package:tripui/resources/style/Style.dart';

class HeaderNav extends StatelessWidget {
  String _text;
  IconData _icon;

  HeaderNav(this._text, this._icon);
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: primaryBoxColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                boxShadowContainer
              ]),
          child: Center(
            child: Icon(
              this._icon,
              color: primaryOrange,
            ),
          ),
        ),
        SizedBox(width: 10),
        Text(
          this._text,
          style: titleBody,
        )
      ],
    );
  }
}
