import 'package:electronicshop/screen/veiwproducts.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MYAPP());
}
class MYAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: veiwproducts(),
    );
  }
}
