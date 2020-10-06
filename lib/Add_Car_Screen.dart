//Second Screen
import 'package:flutter/cupertino.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class secondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title:"",

        home: Scaffold(
          // Add text and arrow icon to App Bar
          appBar:AppBar(
              toolbarHeight: 90,
              leading: IconButton(icon: Icon(Icons.arrow_back,
                size: 27,
                color: Colors.white,
              ),
                  onPressed: (){
                    Navigator.pop(context);
                  }
              ),

              title: Text("Add Your Car " ,
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                  // fontFamily: "SansSerif" ,
                ) ,
              ),
              backgroundColor: Color(0xffff6f27),
              brightness: Brightness.light
          ),
          body: new ListView(
            padding: EdgeInsets.only(top: 25, left: 16 ),
            children: <Widget>[
              //Brand Text
              Text("Brand" , style: TextStyle(fontSize: 16 ,
                color: Color(0xff000000),
              ),
              ),

              //list of Brands
              list_of_brands(),
              text_with_popUp("Model" , "1999" , "20019" , "2017" ),
              text_with_popUp("Year" , "2002" , "2005" , "2017" ),
              text_field("Car Plate"),
              text_field("Car Color"),
              list_of_circles(),

              Text("Brand" , style: TextStyle(fontSize: 16 ,
                color: Color(0xff000000),
              ),
              ),
              select_image(),
              Container(
                  margin: EdgeInsets.only(right: 40 , left:  24 , bottom:  40 ),
                  child: button("Add Car ", Colors.white, Color(0xffff6621) , 45.0)
              )
            ],
          ),
        )
    );
  }
}

Widget list_of_circles(){
  return new Container(
    margin: EdgeInsets.only(top: 15 , bottom: 25),
    height: 30,
    child: new ListView(
        scrollDirection: Axis.horizontal,
        children: [
          circle(Colors.red),
          circle(Colors.amber),
          circle(Colors.green),
          circle(Colors.greenAccent),
          circle(Colors.lightGreen),
          circle(Colors.limeAccent),
          circle(Colors.pink),
          circle(Colors.purple),
          circle(Colors.blue),
          circle(Colors.deepOrange),
          circle(Colors.green),
          circle(Colors.greenAccent),
          circle(Colors.lightGreen),
          circle(Colors.limeAccent),
          circle(Colors.pink),
          circle(Colors.purple)
        ]

    ),
  );
}

Widget circle(Color color) {
  // TODO: implement build
  return Container(
    width: 30,
    height: 30,
    margin: EdgeInsets.only(right: 12 ),
    child: CircleAvatar(
      radius: 15,
      backgroundColor: color,
    ),

  );
}

Widget  text_with_popUp(String text , String item1 , String item2 , String item3){
  return Container(
      margin: EdgeInsets.only( right: 16),
      height: 55,
      child: TextField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffe3e3e3)),
            ),
            labelText: text ,

            labelStyle: new TextStyle(
                color: Color(0xff000000)
            ),
            suffixIcon: Container(
              width: 20,
              height: 20,
              alignment: Alignment.topRight,
              child: popMenuButton(item1 , item2 , item3),
            ),
          )

      )
  );

}

Widget popMenuButton(String item1 , String item2 , String item3 ){
  return PopupMenuButton(
      icon: Container(
          child:Image.asset("images/arrow_down.png")
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          child: Text(item1),
        ),
        PopupMenuItem(
          child: Text(item2),
        ),
        PopupMenuItem(
          child: Text(item3),
        ),
      ]
  );
}

Widget brand_container(String brand_img){
  return Container(
    width: 84,
    height: 84,
    child: Image.asset(brand_img),
  );
}

Widget list_of_brands(){
  return new Container(
    margin: EdgeInsets.only(top: 12 , bottom: 12),
    height: 84,
    child: new ListView(
        scrollDirection: Axis.horizontal,
        children: [
          brand_container("images/car_brand.png"),
          brand_container("images/car_brand1.png"),
          brand_container("images/car_brand2.png"),
          brand_container("images/car_brand.png"),
          brand_container("images/car_brand2.png"),
          brand_container("images/car_brand.png"),
          brand_container("images/car_brand1.png"),
        ]

    ),
  );
}

Widget  text_field(String text){
  return Container(
      margin: EdgeInsets.only( right: 16),
      height: 55,
      child: TextField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffe3e3e3)),
            ),
            labelText: text ,

            labelStyle: new TextStyle(
                color: Color(0xff000000)
            ),
          )

      )
  );

}

Widget button(String button_text , Color text_color , Color button_color , double height1){
  return MaterialButton(onPressed: (){},
    child: Text(button_text ,
      textAlign: TextAlign.center  ,
      style: TextStyle(color:  text_color ),
    ),
    color: button_color ,
    height: height1 ,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
    ),
  );
}
// select image frame
Widget select_image(){
  return new Container(
      height: 199,
      margin: EdgeInsets.only(bottom: 28 , top: 16 , right: 16 ),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(15),
        padding: EdgeInsets.all(6),
        color:  Color(0xffb3b3b3),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 26  ),
                    child: Image.asset("images/Car.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12 , bottom: 8 ),
                    child: Text("Recommended Size (500*500)" ,
                      style: (
                          TextStyle(
                            color: Color(0xffb3b3b3),
                          )
                      ),
                    ),
                  ),
                  button("Select Image" , Color(0xff1d4ca1) , Colors.white70 , 33.0)
                ],
              ),
            )
        ),
      )
  );
}