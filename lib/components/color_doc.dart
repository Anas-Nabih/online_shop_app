import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
class ColorDoc extends StatelessWidget {
  final Color color;
  final bool isSelected ;

  const ColorDoc({
    this.color,
    this.isSelected = false ,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefultPadding /2,right: kDefultPadding/2 ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        border: Border.all(color: isSelected ? color : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape:BoxShape.circle ,
          color: color,
        ),
      ),
    );
  }
}