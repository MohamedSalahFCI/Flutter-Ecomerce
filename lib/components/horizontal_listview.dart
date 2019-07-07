import 'package:flutter/material.dart';
/*
hna a7na 3mlna state list classs 3shan l goz2 dh sabt 3la tool mesh hayt8ayar f 3ady laken 
l goz2 aly ta7to sh hayt8ayar 3la tool f lazam ykon state full
*/
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:80.0 ,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
          imageLocation: 'images/cats/tshirt.png',
          imageCaption:'shirt' ,
          ),
          Category(
          imageLocation: 'images/cats/dress.png',
          imageCaption:'Dress' ,
          ),
          Category(
          imageLocation: 'images/cats/formal.png',
          imageCaption:'Formal' ,
          ),
          Category(
          imageLocation: 'images/cats/informal.png',
          imageCaption:'Informal' ,
          ),
          Category(
          imageLocation: 'images/cats/jeans.png',
          imageCaption:'Jeans' ,
          ),
          Category(
          imageLocation: 'images/cats/accessories.png',
          imageCaption:'Accessories' ,
          ),
          Category(
          imageLocation: 'images/cats/shoe.png',
          imageCaption:'Shoe' ,
          ),
        ],
      ),
      
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;
  Category({
    this.imageCaption,
    this.imageLocation
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(
      onTap: (){},
      child: Container(
          width: 100.0,
          child: ListTile(
          title: Image.asset(imageLocation,
          width: 100.0,
          height: 50.0,
          ),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(imageCaption,style: new TextStyle(fontSize: 12.0),),
          ),
        ),
      ),
    ) ,
    
      
    );
  } 
}