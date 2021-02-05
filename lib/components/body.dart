import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/prodcut.dart';
import 'package:online_shop_app/screens/details_screen.dart';
import 'categorries.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefultPadding),
          child: Text('Women',
            style: Theme.of(context).textTheme.headline.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Catergorries(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefultPadding),
            child: GridView.builder(
              itemCount: prodcuts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: kDefultPadding,
                  mainAxisSpacing: kDefultPadding,
                ),
                itemBuilder:(context,index) =>ItemCard(
                  prodcut: prodcuts[index],
                  press: ()=> Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) =>DetailsScreen(
                          prodcut: prodcuts[index],
                        )
                      )
                  ),
                ),
            ),
          ),
        )
      ],
    );
  }
}



