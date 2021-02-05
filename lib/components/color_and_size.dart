import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/prodcut.dart';
import 'color_doc.dart';
class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.prodcut,
  }) : super(key: key);

  final Prodcut prodcut;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Color'),
              Row(
                children: <Widget>[
                  ColorDoc(color: Color(0XFF356C95),isSelected: false,),
                  ColorDoc(color: Color(0XFFF8C078),isSelected: false,),
                  ColorDoc(color: Color(0XFFA29B9B),isSelected: false,),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
                style: TextStyle(color: kTextColor),
                children: [
                  TextSpan(text: 'Size\n',),
                  TextSpan(text: prodcut.size.toString()+'cm',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)
                  ),
                ]
            ),
          ),
        ),
      ],
    );
  }
}