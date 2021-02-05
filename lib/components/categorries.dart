import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';

class Catergorries extends StatefulWidget {
  @override
  _CatergorriesState createState() => _CatergorriesState();
}

class _CatergorriesState extends State<Catergorries> {
  List <String> categories = ['Hand Bag', 'Jewellery', 'FootWear', 'Dresses'];
  int selectedindex = 0 ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategry(index),
        ),
      ),
    );
  }
  Widget buildCategry(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedindex = index ;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(fontWeight: FontWeight.bold,
                color: selectedindex == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefultPadding/4),
              height: 2,
              width: 30,
              color: selectedindex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}