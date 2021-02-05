import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/models/prodcut.dart';
import 'prodcut_title_with_image.dart';
import 'color_and_size.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Prodcut prodcut;

  const Body({Key key, this.prodcut}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height* 0.3),
                  padding: EdgeInsets.only(top: 50, left: 20 ),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26),
                    )
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(prodcut: prodcut),
                      Description(prodcut: prodcut),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CartCounter(),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: Color(0XFFFF6464),
                              shape: BoxShape.circle
                            ),
                            child: Icon(Icons.favorite,color: Colors.white,),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: kDefultPadding),
                            height: 50,
                            width: 58,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border:Border.all(color: prodcut.color),
                            ),
                            child: IconButton(
                                icon: Icon(Icons.shopping_cart,color: prodcut.color,),
                                onPressed: (){}),
                          ),
                          Expanded(
                            child: SizedBox(height: 45,
                            child:FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13)
                              ),
                              color: prodcut.color,

                              child: Text('Buy Now'.toUpperCase(),
                              style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.white) ,
                              ),
                              onPressed: (){},
                            ) ,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                ProdcutTitleWithImage(prodcut: prodcut),

              ],
            ),
          ),
        ],
      ),
    );
  }
}



class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems= 1 ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutLineButton(icon:Icons.remove,press: (){
          setState(() {
            if (numOfItems != 1)
            numOfItems --;
          });
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefultPadding/2),
          child: Text(numOfItems.toString().padLeft(2,'0'),style: TextStyle(fontSize: 20),),
        ),
        buildOutLineButton(icon:Icons.add,press: (){
          setState(() {
            numOfItems ++ ;
          });
        }),
      ],
    );
  }

  SizedBox buildOutLineButton({IconData icon, Function press}) {
    return SizedBox(
        height: 32,
        width: 40,
        child: OutlineButton(
          padding: EdgeInsets.zero,
          onPressed: press,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          child: Icon(icon),
        ),
      );
  }
}





