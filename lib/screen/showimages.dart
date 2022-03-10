import 'package:flutter/material.dart';
class images extends StatefulWidget {
  List<String>imag;
  images(this.imag);
  @override
  _imagesState createState() => _imagesState(this.imag);
}
late List<String>imags;
class _imagesState extends State<images> {
  _imagesState(List<String> imag){imags=imag;}

  @override
  Widget build(BuildContext context) {
    return _veiwimage();
  }
  Widget _veiwimage(){
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,itemcount){
        return Padding(padding: EdgeInsets.all(10),
          child:Container(
            height: double.infinity,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.black,
              image: DecorationImage(image: AssetImage(imags[itemcount]),fit: BoxFit.fill),
            ),
          ),
        );
      },
      itemCount: imags.length,);
  }
}
