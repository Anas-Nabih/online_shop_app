import 'package:flutter/material.dart';
import 'package:online_shop_app/models/prodcut.dart';
import 'package:online_shop_app/constants.dart';

class ItemCard extends StatelessWidget {
  final Prodcut prodcut;
  final Function press ;

  const ItemCard({
    this.prodcut,
    this.press,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefultPadding),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                  color: prodcut.color,
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Hero(
                tag:prodcut.image ,
                child: Image.asset(prodcut.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:kDefultPadding/4),
            child: Text(prodcut.title, style: TextStyle(color: kTextLightColor),),
          ),
          Text( '\$' + prodcut.price.toString(),
            style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
