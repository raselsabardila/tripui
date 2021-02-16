import 'package:flutter/material.dart';
import 'package:tripui/resources/component/IconCheck.dart';
import 'package:tripui/resources/component/IconStar.dart';
import 'package:tripui/resources/style/Style.dart';

class ListHotel extends StatelessWidget {
  String _name, _location, _imgURL;
  int _active, _price;

  ListHotel(
      this._name, this._location, this._price, this._active, this._imgURL);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        width: (MediaQuery.of(context).orientation == Orientation.landscape)
            ? MediaQuery.of(context).size.width / 2.3
            : double.infinity,
        height: 230,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(this._imgURL), fit: BoxFit.cover)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 160,
                    height: 40,
                    decoration: BoxDecoration(
                        color: primaryDark.withOpacity(0.6),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "IDR ${this._price.toString()}k",
                          style: listName.copyWith(
                              color: primaryOrange.withOpacity(0.6)),
                        ),
                        Text(
                          "/Night",
                          style: listName.copyWith(
                              color: Colors.white.withOpacity(0.6)),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: 10, right: 10),
                    child: IconCheck(1),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      this._name,
                      style: listName,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.white.withOpacity(0.4),
                          size: 16,
                        ),
                        Text(
                          this._location,
                          style: subTitle.copyWith(
                              color: Colors.white.withOpacity(0.2)),
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                IconStar(this._active)
              ],
            )
          ],
        ),
      ),
    );
  }
}
