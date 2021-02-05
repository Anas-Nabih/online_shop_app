import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/prodcut.dart';
import 'package:online_shop_app/components/details_body_screen.dart';

class DetailsScreen extends StatelessWidget {
 final Prodcut prodcut;

  const DetailsScreen({Key key, this.prodcut}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: prodcut.color,
      appBar: buildAppBar(context),
      body: Body(prodcut: prodcut,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: prodcut.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back,),
        onPressed: ()=> Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search), onPressed:() {}),
        IconButton(icon: Icon(Icons.shopping_cart), onPressed:() {},),
        SizedBox(width: kDefultPadding/2,)
      ],
    );
  }
}
