import 'package:flutter/material.dart';
import 'package:electronicshop/models/product.dart';
const kBackgroundColor = Color(0xFFF1EFF1);
const kPrimaryColor = Color(0xFF219ebc);
const kSecondaryColor = Color(0xFFfcca46);
const kTextColor = Color(0xFF023047);
const kTextLightColor = Color(0xFF747474);
const kBlueColor = Color(0xFF40BAD5);
const kDefaultPadding = 20.0;

List<product> products=[
  product("A", "Airbods", "High voluem clear multy colors ", 300 , 15, DateTime.now(), ["assests/a1.jpg","assests/a2.jpg","assests/a3.jpg"]),
  product("H", "headphone", "High voluem clear multy colors ", 150 , 9, DateTime.now(), ["assests/h1.jpg","assests/h2.jpg","assests/h3.jpg"]),
  product("K", "Keyboard", "High lights clearly cells multy colors ", 100 , 13, DateTime.now(), ["assests/k1.jpg","assests/k2.jpg"]),
  product("M", "Mouse", "high speed wirless hugh distance ", 50 , 60, DateTime.now(), ["assests/m1.jpg","assests/m2.jpg"]),
  product("PH", "Phone", "High voluem clear multy colors fast charger", 3000 , 500, DateTime.now(), ["assests/ph1.jpg","assests/ph2.jpg","assests/ph3.jpg","assests/ph4.jpg"]),

];