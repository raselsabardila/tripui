import 'package:flutter/material.dart';
import 'package:tripui/resources/style/Style.dart';

class IconCheck extends StatefulWidget {
  double _opacity;

  IconCheck(this._opacity);

  @override
  _IconCheckState createState() => _IconCheckState(this._opacity);
}

class _IconCheckState extends State<IconCheck> {
  double _opacity;

  _IconCheckState(this._opacity) {
    print(this._opacity.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: primaryOrange.withOpacity(this._opacity),
          borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: Icon(
          Icons.check,
          color: Colors.white.withOpacity(this._opacity),
          size: 16,
        ),
      ),
    );
  }
}
