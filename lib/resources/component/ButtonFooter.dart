import 'package:flutter/material.dart';
import 'package:tripui/resources/style/Style.dart';

class ButtonFooter extends StatelessWidget {
  Color _color;
  String _text;
  dynamic _class;

  ButtonFooter(this._text, this._color, this._class);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return this._class;
        }));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: this._color, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: <Widget>[
            Text(
              this._text,
              style: listName,
            ),
            Spacer(),
            Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
