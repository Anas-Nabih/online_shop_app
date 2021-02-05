import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(icon: Icon(Icons.arrow_back, color:kTextColor,), onPressed: (){}),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search,color: kTextColor,),onPressed: (){},),
        IconButton(icon: Icon(Icons.shopping_cart,color: kTextColor,),onPressed: (){},),
      ],
    );
  }
}
