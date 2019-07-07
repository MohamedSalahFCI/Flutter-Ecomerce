import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//myOwn Imports
import 'package:flutter_ecomrs/components/horizontal_listview.dart';
import 'package:flutter_ecomrs/components/products.dart';
import 'package:flutter_ecomrs/pages/cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  //making special widget
  Widget imageCarousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c1.jpg'),
        AssetImage('images/m1.jpeg'),
        AssetImage('images/m2.jpg'),
        AssetImage('images/w1.jpeg'),
        AssetImage('images/w3.jpeg'),
        AssetImage('images/w4.jpeg'),
      ],
      //lw 3yz l image tat7ark Automaticly hat3mlha True 3ady
      autoplay: false ,
 //lw ha32mlha true yb2a hashel l comments 3n l atnen aly ta7t dool  
      //animationCurve: Curves.fastOutSlowIn,
     // animationDuration: Duration(microseconds: 1000),
      dotSize: 4.0,
      dotColor: Colors.white70,
      indicatorBgPadding: 4.0,
      dotBgColor: Colors.transparent,

    ),
  );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Fashapp'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search ,color: Colors.white,),
          //onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>new shoppingCart())),
          onPressed: (){},
          ),
          new IconButton(icon: Icon(Icons.shopping_cart ,color: Colors.white,),
          onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>new shoppingCart())),)
        ],
      ),
      //header
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
           new UserAccountsDrawerHeader(accountName: Text('Mohamed Salah' ,style: TextStyle(color: Colors.white),),
           accountEmail: Text('Mohamed.sallah147@gmail.com',style: TextStyle(color: Colors.white)),
           currentAccountPicture:GestureDetector(
             child: new CircleAvatar(
               backgroundColor: Colors.blue,
               child: Icon(Icons.person,color: Colors.white,),
             ),
           ),
           decoration: new BoxDecoration(
              color: Colors.red
           ),
           ) ,
           //body
           InkWell(
                onTap: (){},
                child: ListTile(
                title:Text('Home Page') ,
                leading: Icon(Icons.home,color: Colors.blue,), 
             ),
           ),
            InkWell(
                onTap: (){},
                child: ListTile(
                title:Text('My Account') ,
                leading: Icon(Icons.person,color: Colors.blue), 
             ),
           ),
            InkWell(
                onTap: (){},
                child: ListTile(
                title:Text('My Orders') ,
                leading: Icon(Icons.shopping_basket,color: Colors.blue), 
             ),
           ),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new shoppingCart()));
                },
                child: ListTile(
                title:Text('Shoping Cart') ,
                leading: Icon(Icons.shopping_cart,color: Colors.blue), 
             ),
           ),
            InkWell(
                onTap: (){},
                child: ListTile(
                title:Text('Favouirts') ,
                leading: Icon(Icons.favorite,color: Colors.blue), 
             ),
           ),
           InkWell(
                onTap: (){},
                child: ListTile(
                title:Text('Settings') ,
                leading: Icon(Icons.settings,color: Colors.blue), 
             ),
           ),
           InkWell(
                onTap: (){},
                child: ListTile(
                title:Text('About') ,
                leading: Icon(Icons.help,color: Colors.blue), 
             ),
           ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          imageCarousel,
          //l padding dh 3shan yanzal kalmt l category ta7t shwya 
          //y3ny dh padding widget 3shan kda ma3rftsh a7oot l Text 8er lma 3mlt child
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),),
          //Horizontall List View begins here 
          HorizontalList(),
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Recent Products'),),
          //here is the grid view
          Container(
            height: 320.0,
            child: Products(),
          ),



        ],
      ),

    );
  }
}













/*
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        title: Text('FlashApp'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search),color: Colors.white,onPressed: (){},),
          new IconButton(icon: Icon(Icons.shopping_cart),color: Colors.white,onPressed: (){},)
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: Text('momo'),accountEmail: Text('momo@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                //l 7ta dh mohma 3ayz afhmha 
                child: Icon(Icons.person,color: Colors.white,),
                
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.blue
            ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),

              ),
            )
          ],
        ),
      ),
      
    );
  }
}
*/