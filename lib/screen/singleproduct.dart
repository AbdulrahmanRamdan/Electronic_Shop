import 'package:electronicshop/models/product.dart';
import 'package:electronicshop/screen/showimages.dart';
import 'package:flutter/material.dart';
import 'package:electronicshop/constants.dart';
class single_product extends StatefulWidget {
  product _product;
  single_product(this._product);
  @override
  _single_productState createState() => _single_productState(this._product);
}
late product pro;
int num=1;
class _single_productState extends State<single_product> {
  _single_productState(product productt){
    pro=productt;
  }@override
  void dispose() {
    num=1;
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title:Text( pro.title),
        centerTitle: true,
      ),
      body: Padding(padding: EdgeInsets.all(15),
      child: ListView(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [SizedBox(height: 300,
          child:_veiwimage(),),
        SizedBox(height: 15,),
           SizedBox(child: Text(pro.describtion,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600,height: 1.2),),),
          SizedBox(height: 15,),
           Row(mainAxisAlignment: MainAxisAlignment.center,
             children: [
             Text("Avilable :",style: TextStyle(color: Colors.green,fontSize: 20,),),
             SizedBox(width: 10,),
               Row(
                 children: [
                   Text(pro.avialbalenumbers.toString(),style: TextStyle(fontSize: 20,color: Colors.black),),
                   SizedBox(width: 5,),
                   Text("Peices",style: TextStyle(fontSize: 15,color: Colors.orangeAccent),),

                 ],
               ),
           ],),
          SizedBox(height: 15,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Price :",style: TextStyle(color: Colors.green,fontSize: 20,),),
              SizedBox(width: 10,),
              Row(
                children: [
                  Text(pro.price.toString(),style: TextStyle(fontSize: 18,color: Colors.black),),
                  Icon(Icons.monetization_on),
                ],
              ),
            ],),
          SizedBox(height: 15,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.alarm,size: 18,color: kTextLightColor,),
              Text(pro.datewritten.toString(),style: TextStyle(fontSize: 18,color: kTextLightColor,),)
            ],
          ),
          SizedBox(height: 15,),
           _roworder(),
           SizedBox(height: 15,),
         RaisedButton(onPressed: (){},color: Colors.red.shade900,
         child: Text("BUY",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
         ),
        ],
      ),]),
      ),
    );
  }
  Widget _veiwimage(){
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){return images(pro.images);}));
      },
    child:ListView.builder(
      scrollDirection: Axis.horizontal,
        itemBuilder: (context,itemcount){
        return Padding(padding: EdgeInsets.all(10),
          child:Container(
            height: MediaQuery.of(context).size.height*0.4,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.black,
            image: DecorationImage(image: AssetImage(pro.images[itemcount]),fit: BoxFit.fill),
          ),
        ),
        );
    },
    itemCount: pro.images.length,),);
  }

 Widget _roworder() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [Text("Price :",style: TextStyle(color: Colors.redAccent.shade700,fontWeight: FontWeight.bold,fontSize: 20),),
            Text((num*pro.price).toString(),style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),Icon(Icons.monetization_on),
          ],
        ),
        SizedBox(width: 15,),
        Row(
          children: [
            Text("quantity",style: TextStyle(color: Colors.orangeAccent,fontSize: 18,),),
            IconButton(onPressed: (){setState(() {
              if(num<pro.avialbalenumbers)
                num++;
            });}, icon: Icon(Icons.add)),
            Text(num.toString()),
            IconButton(onPressed: (){setState(() {
   if(num>1)
   num--;
   });}, icon: Icon(Icons.minimize))
          ],
        ),
      ],
    );
 }
}
