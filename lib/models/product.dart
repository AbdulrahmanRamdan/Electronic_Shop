import 'package:flutter/material.dart';
class product{
  String id,title,describtion;
  int avialbalenumbers;
  double price;
  DateTime datewritten;
  List<String>images;
  product(this.id,this.title,this.describtion,this.price,this.avialbalenumbers,this.datewritten,this.images);

  double _calc_totalprice(int num){
    return num*this.price;
  }

}