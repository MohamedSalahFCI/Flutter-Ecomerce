import 'package:flutter/material.dart';
//a7na lma nashta8al m3 l firebase hanshta8al 3la l json w dh 7aga kwysa gadn gadn 
//3shan kda mesh haynf3 narg3 Container m3 l json 3shan anta mesh 3arf ehg aly hayrg3lk f hat5leha list 
class cartProducts extends StatefulWidget {
  @override
  _cartProductsState createState() => _cartProductsState();
}

class _cartProductsState extends State<cartProducts> {
  var productsOnTheCart =[
    //hna han3mal maps 3shan talf 3la kool l 7aga aly 3ndy ''Video 13" w 3shan t3mal map hatst5dam l {} dool 
    {
      //hna haykon 3ndy magmo3a mn l attributes .. l key ana hast5dmha 3la tool lw ana 3ayz access ay 7aga 
      "name":"Blazer",
      "picture":"images/productsimg/blazer1.jpeg",
      "price":80,
      "size":'M',
      "color":"Black",
      "quantity":1,
    },
    {
      //hna haykon 3ndy magmo3a mn l attributes .. l key ana hast5dmha 3la tool lw ana 3ayz access ay 7aga 
      "name":"redDress",
      "picture":"images/productsimg/dress1.jpeg",
      "price":135,
      "size":'M',
      "color":"Red",
      "quantity":1,
    },
    {
      //hna haykon 3ndy magmo3a mn l attributes .. l key ana hast5dmha 3la tool lw ana 3ayz access ay 7aga 
      "name":"Shoe",
      "picture":"images/productsimg/shoe1.jpg",
      "price":135,
      "size":'M',
      "color":"Red",
      "quantity":2,
    },
  ];
  @override
  Widget build(BuildContext context) {
    //ListView.builder dh 3shan lw ana mesh 3arf l 3add aly haygely f d aly hast5dmha m3 l json .. f ana akid ha3mal l forma bassw ha5ly l json kolo hayt3ard 3la 7asab l index bta3o 
    return new ListView.builder(
      //kda haytb3 aly mawgood da5el l itemBuilder nafs l 3add aly maktob hna .. y3ny 3 mrat ya salah 
      itemCount: productsOnTheCart.length,
      itemBuilder: (context,index){
        return singleCartProduct(
          cartProductName: productsOnTheCart[index]["name"],
          cartProductPic: productsOnTheCart[index]['picture'],
          cartProductPrice: productsOnTheCart[index]['price'],
          cartProductSize: productsOnTheCart[index]["size"],
          cartProductColor: productsOnTheCart[index]["color"],
          cartProductQuantity: productsOnTheCart[index]["quantity"],
        );
      },);
  }
}

class singleCartProduct extends StatelessWidget {
  final cartProductName;
  final cartProductPic;
  final cartProductPrice;
  final cartProductSize;
  final cartProductColor;
  final cartProductQuantity;

  singleCartProduct({
    this.cartProductName,
    this.cartProductPic,
    this.cartProductPrice,
    this.cartProductSize,
    this.cartProductColor,
    this.cartProductQuantity
  });
  @override
  Widget build(BuildContext context) {
    //5aly balk mn 7war l card dh fel flutter
    return Card(
      child: ListTile(
        leading: new Image.asset(cartProductPic,width: 80.0,height: 70.0,),
        title: new Text(cartProductName),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Expanded(
                  flex: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: new Text("Size:")),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 60, 10),
                  child: new Text(cartProductSize,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),
                Expanded(
                  flex: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: new Text("color:")),
                ),
                //l goz2 dh 3ayz ytzabt 3sshan 3la mobily mesh sh8al .. hanshof dh b3deen 
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: new Text(cartProductColor,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)),
              ],
            ),
           new Container(
             alignment: Alignment.topLeft,
             child: new Text("\$${cartProductPrice}",
             style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold,color: Colors.red),
             ),
           )
          ],
        ),
        /*
        moham awy l design d 3aaash ya salah fe taqadom 
        title: new Row(
          children: <Widget>[
            Expanded(
              child: new Text("Hi momo")),
            new IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.red,),onPressed: (){},),
          ],
        ),
        */
        trailing: new Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up),onPressed: (){},),
            //hna 3shan a7ot integer gwa string lazam a3mal kda .. dh mal7ooza mohama gadn 
            new Text("${cartProductQuantity}"),
            new IconButton(icon: Icon(Icons.arrow_drop_down),onPressed: (){},),
            
          ],
        ),
      ),
    );
  }

}


