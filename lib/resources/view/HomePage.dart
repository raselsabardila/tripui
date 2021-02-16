import 'package:flutter/material.dart';
import 'package:tripui/resources/component/ButtonFooter.dart';
import 'package:tripui/resources/component/HeaderNav.dart';
import 'package:tripui/resources/component/ListType.dart';
import 'package:tripui/resources/style/Style.dart';
import 'package:tripui/resources/view/HotelPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = -1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: primaryDark),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                HeaderNav("Trip", Icons.trip_origin),
                SizedBox(height: 30),
                Text(
                  "Whom You are Planning To Travel With?",
                  style: titleBody,
                ),
                SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          setState(() {
                            this._index = 1;
                            print(this._index);
                          });
                        },
                        child: ListType(
                            "Solo Trip",
                            "Suitable for you need calm sitoation",
                            (this._index == 1) ? true : false),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            this._index = 2;
                          });
                        },
                        child: ListType(
                            "Solo Trip",
                            "Suitable for you need calm sitoation",
                            (this._index == 1) ? true : false),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            this._index = 3;
                          });
                        },
                        child: ListType(
                            "Solo Trip",
                            "Suitable for you need calm sitoation",
                            (this._index == 1) ? true : false),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            this._index = 4;
                          });
                        },
                        child: ListType(
                            "Solo Trip",
                            "Suitable for you need calm sitoation",
                            (this._index == 1) ? true : false),
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 10),
                ButtonFooter("Continue To Hotels", primaryPurple, HotelPage())
              ],
            ),
          ),
        ),
      )),
    );
  }
}
