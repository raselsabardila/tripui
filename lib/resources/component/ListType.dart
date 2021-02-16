import 'package:flutter/material.dart';
import 'package:tripui/resources/component/IconCheck.dart';
import 'package:tripui/resources/style/Style.dart';

class ListType extends StatefulWidget {
  String _name, _text;
  bool _active;

  ListType(this._name, this._text, this._active);

  @override
  _ListTypeState createState() =>
      _ListTypeState(this._name, this._text, this._active);
}

class _ListTypeState extends State<ListType> {
  String _name, _text;
  bool _active;

  _ListTypeState(this._name, this._text, this._active);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 0),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          color: primaruGrey,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [boxShadowContainer]),
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this._name,
                style: listName,
              ),
              Text(
                this._text,
                style: subTitle,
              )
            ],
          ),
          Spacer(),
          IconCheck((this._active) ? 1 : 0)
        ],
      ),
    );
  }
}
