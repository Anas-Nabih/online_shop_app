import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/prodcut.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.prodcut,
  }) : super(key: key);

  final Prodcut prodcut;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefultPadding),
      child: Text(prodcut.description,
        style: TextStyle(fontWeight: FontWeight.w400,height:1.7),
      ),
    );
  }
}