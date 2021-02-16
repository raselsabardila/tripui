import 'package:flutter/material.dart';
import 'package:tripui/resources/component/ButtonFooter.dart';
import 'package:tripui/resources/component/GridListHote.dart';
import 'package:tripui/resources/component/HeaderNav.dart';
import 'package:tripui/resources/model/Hotel.dart';
import 'package:tripui/resources/style/Style.dart';
import 'package:tripui/resources/view/HomePage.dart';

class HotelPage extends StatelessWidget {
  List<Hotel> hotels = [
    new Hotel("Paradise Hotel", "New York, AS", 2500, 4,
        "https://images.unsplash.com/photo-1455587734955-081b22074882?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fGhvdGVsfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
    new Hotel("Cozy Cone", "California, AS", 1500, 5,
        "https://images.unsplash.com/photo-1560111137-11374746a448?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8bW90ZWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
    new Hotel("Hotel Neo", "Yogyakarta, Indonesia", 599, 3,
        "https://images.unsplash.com/photo-1517840901100-8179e982acb7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8aG90ZWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
    new Hotel("Valhalla Hotel", "Radiator Spring, AS", 599, 1,
        "https://images.unsplash.com/photo-1605602559790-d2dc18ddc62a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDd8fGhvdGVsfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
  ];

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
                  HeaderNav("Hotels", Icons.hotel),
                  SizedBox(height: 30),
                  Text(
                    "Select the hotel you want to stay in",
                    style: titleBody,
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    height: 20,
                  ),
                  GridListHotel(this.hotels),
                  ButtonFooter(
                      "Continue to Payment", primaryPurple, HomePage()),
                ]),
          ),
        ),
      )),
    );
  }
}
