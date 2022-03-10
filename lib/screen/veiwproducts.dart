import 'package:electronicshop/models/product.dart';
import 'package:electronicshop/screen/singleproduct.dart';
import 'package:flutter/material.dart';
import 'package:electronicshop/constants.dart';
class veiwproducts extends StatefulWidget {
  @override
  _veiwproductsState createState() => _veiwproductsState();
}

class _veiwproductsState extends State<veiwproducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: Text("ELECTRONIC SHOP"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: SafeArea(
          child: Stack(
          children: [
          Container(
            margin: EdgeInsets.only(top: 70),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius:BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight:Radius.circular(30),
              ) ,
            ),
          ),
            ListView.builder(
              itemBuilder: (context,itemcount){
                return _drawcard(products[itemcount]);},
              itemCount:products.length,
            ),
        ],
      ),
      ),
    );
  }
  Widget _drawcard(product _product){
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){return single_product(_product);}));
      },
      child: Padding(padding: EdgeInsets.all(kDefaultPadding),
        child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30),),
                  color: Colors.white,
                ),
              child:_drawrowofcontainer(_product),
              ),
            ),
    );
  }

  Widget _drawrowofcontainer(product _product) {
    return Padding(padding: EdgeInsets.all(15),
      child: Row(
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage(_product.images[0]),
          ),
          SizedBox(width: 15,),
            Align(
            child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1),child:
              Text(_product.title,style: TextStyle(fontSize: 25,color: kTextColor),) ,),
    Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1),child:Column(
            children: [
              SizedBox(height: 5,),
              Row(
                children: [
                  Text(_product.avialbalenumbers.toString(),style: TextStyle(fontSize: 15,color: Colors.black),),
                  SizedBox(width: 5,),
                  Text("Peices",style: TextStyle(fontSize: 15,color: Colors.orangeAccent),),

                ],
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Icon(Icons.alarm,size: 13,color: kTextLightColor,),
                  Text(_product.datewritten.day.toString(),style: TextStyle(fontSize: 13,color: kTextLightColor,),)
                ],
              ),
              SizedBox(height: 5,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: kSecondaryColor,
                ),
                child:Padding( padding: EdgeInsets.symmetric(horizontal: 8),child: Row(
                  children: [
                     Text(_product.price.toString(),style: TextStyle(fontSize: 18,color: Colors.black),),
                     Icon(Icons.monetization_on),
                  ],
               ),
              ),),
             ]),),
            ],
          ),),
        ],
      ),
    );
  }

}
