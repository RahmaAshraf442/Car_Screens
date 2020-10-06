import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'Add_Car_Screen.dart';

void main() {
  runApp(
    firstScreen() ,
  );
}

class firstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"",

      home: Scaffold(
        // Add text and arrow icon to App Bar
        appBar:AppBar(
          toolbarHeight: 90,
          leading: Icon(Icons.arrow_back,
            size: 27,
          color: Colors.white,),
          title: Text("Your Cars" ,
            style: TextStyle(
              fontSize: 21,
             color: Colors.white,
              // fontFamily: "SansSerif" ,
          ) ,
        ),
          backgroundColor: Color(0xffff6f27),
            brightness: Brightness.light
      ),
        body:Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top:17 ),
          child: ListView(
          children: [
             list("images/redCar.jpg", Colors.red , "BMW-X6" , "2010" , "123649" , "images/shape.png"),
             list("images/BMW.jpg", Colors.blueAccent , "Opel - insignia" , "2002" , "453644" , ""),
            list("images/car_orange.jpg", Colors.deepOrangeAccent , "Opel - insignia" , "1987" , "685325" , ""),
]
        ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20, bottom: 17),
            alignment: Alignment.bottomRight,
            child:floating(),
          )

          ]
        )
    )
    );
  }

}
//image as a circle
Widget circleImage(String image){
  return Container(
      width: 65,
      height: 65,
      child: CircleAvatar(
          radius: 65,
          backgroundImage: AssetImage(image),
        ),

  );
}
//color circle
Widget circleColor(Color color){
  return Container(
      width: 20,
      height: 20,
      alignment: Alignment.bottomLeft,
      child: CircleAvatar(
        backgroundColor: Colors.white,
      child:Padding(
        padding: const EdgeInsets.all(2),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      )

  )
  );
}

//list widget
Widget list(String car_image , Color color , String model , String year , String CarPlate , String img ){
  return Container(
    height: 95,
    color: const Color(0xffffffff ),
    margin: EdgeInsets.only(bottom: 8, top: 8 , left: 12 , right: 12),
    child:ListTile(
      leading: car(car_image, color),
      title: Container(
        margin: EdgeInsets.only(top: 17),
        child: Text(model , style: TextStyle(fontSize: 16), ),),
      subtitle:SubText_list(year , CarPlate),
        trailing: Container(

          child:Image.asset(img)
        ),
        onLongPress: () {


        }
  )
  );
}
//car icon and color
Widget car(String image , Color color) {
// TODO: implement build
  return new Container(
    width: 65 ,
    height: 65,
    child: new Stack(
      children: <Widget>[
      new Container(
        alignment: Alignment.centerLeft,
        child:circleImage(image),
      ),
      new Align(alignment: Alignment.bottomRight,
        child: circleColor(color)
      )
    ],
    ),
  );
}
//sub title of list title (car year and plate )
Widget SubText_list(String year , String CarPlate){
  return Container(
    child: Column(
      children: [
        Row(
          children: [
            Text("Year : " ,
              style: TextStyle(
                  fontSize: 14, color: Color(0xff2d2d2d)),
            ),
            Text(year ,
              style: TextStyle(fontSize: 14 , color: Color(0xff868686)),)
          ],
        ),
        Row(
          children: [
            Text("Car Plate: " ,
              style: TextStyle(
                  fontSize: 14, color: Color(0xff2d2d2d)),
            ),
            Text(CarPlate ,
              style: TextStyle(fontSize: 14 , color: Color(0xff868686)),)
          ],
        ),
      ],
    )
  );
}
// plus floating action button
class floating extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return  FloatingActionButton(
      elevation: 12,
    onPressed: () {
    // Add your onPressed code here!
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return secondScreen() ;
      })
      );
    },
    child: Icon(Icons.add),
    backgroundColor: Color(0xff1d4ca1),
    );
  }
}


