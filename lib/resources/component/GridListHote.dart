import 'package:flutter/material.dart';
import 'package:tripui/resources/component/ListHotel.dart';
import 'package:tripui/resources/model/Hotel.dart';

class GridListHotel extends StatelessWidget {
  List<Hotel> hotels = [];

  GridListHotel(List<Hotel> hotel) {
    this.hotels.addAll(hotel);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      crossAxisCount:
          (MediaQuery.of(context).orientation == Orientation.landscape) ? 2 : 1,
      childAspectRatio:
          (MediaQuery.of(context).orientation == Orientation.landscape)
              ? 1.2
              : 1.3,
      padding: const EdgeInsets.all(0),
      mainAxisSpacing: 0,
      crossAxisSpacing: 20,
      children: new List<Widget>.generate(this.hotels.length, (index) {
        return ListHotel(
            this.hotels[index].name,
            this.hotels[index].location,
            this.hotels[index].price,
            this.hotels[index].active,
            this.hotels[index].imgURL);
      }),
    );
  }
}
