import 'package:flutter/material.dart';

class Prodcut {
  final String image, title , description;
  final int price, size, id ;
  final Color color ;

  Prodcut({
    this.image,
    this.title,
    this.description,
    this.id,
    this.price,
    this.size,
    this.color,
});
}

List <Prodcut> prodcuts = [
  Prodcut(
    id: 1,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: 'assets/images/bag_1.png',
    color:Color(0XFF3D82AE),
  ),
  Prodcut(
    id: 2,
    title: "Belt Bag",
    price: 234,
    size: 12,
    description: dummyText,
    image: 'assets/images/bag_2.png',
    color:Color(0XFFD3A984),
  ),
  Prodcut(
    id: 3,
    title: "Hang Top",
    price: 234,
    size: 12,
    description: dummyText,
    image: 'assets/images/bag_3.png',
    color:Color(0XFF989493),
  ),
  Prodcut(
    id: 4,
    title: "Old Fashion",
    price: 234,
    size: 11,
    description: dummyText,
    image: 'assets/images/bag_4.png',
    color:Color(0XFFE68398),
  ),
  Prodcut(
    id: 5,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: 'assets/images/bag_5.png',
    color:Color(0XFFFB7883),
  ),
  Prodcut(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: 'assets/images/bag_6.png',
    color:Color(0XFFAEAEAE),
  ),
];

String dummyText =
    '"handbag" is a larger accessory that holds objects beyond currency, '
    'such as personal items. American English typically uses the terms purse and handbag interchangeably.'
    ' The term handbag began appearing in the early 1900s. Initially, it was ' ;