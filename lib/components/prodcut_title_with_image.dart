import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/prodcut.dart';

class ProdcutTitleWithImage extends StatelessWidget {
  const ProdcutTitleWithImage({
    Key key,
    @required this.prodcut,
  }) : super(key: key);

  final Prodcut prodcut;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Aristocratic Hand Bag',
            style: TextStyle(color: Colors.white),
          ),
          Text(prodcut.title,
            style: Theme.of(context).textTheme.headline
                .copyWith(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),

          ),
          // SizedBox(height: kDefultPadding,),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(text:'Price\n'),
                      TextSpan(text:'\$'+ prodcut.price.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)
                      ),
                    ]
                ),
              ),
              SizedBox(width: 80,),
              Expanded(
                child: Hero(
                  tag: prodcut.image,
                  child: Image.asset(prodcut.image,),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
