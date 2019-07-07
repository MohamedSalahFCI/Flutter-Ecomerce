import 'package:flutter/material.dart';
//my imports
import 'package:flutter_ecomrs/components/cartproducts.dart';


class shoppingCart extends StatefulWidget {
  @override
  _shoppingCartState createState() => _shoppingCartState();
}

class _shoppingCartState extends State<shoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Cart'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search ,color: Colors.white,),onPressed: (){},),
        
        ],
      ),
      body: new cartProducts(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            //l Expanded dh by2asam bel tsawy 7aga kwysa 
            Expanded(
              child: ListTile(
                title: new Text('Total:') ,
                subtitle: new Text('\$230'),
              ),
            ),
            Expanded(
              child: new MaterialButton(
                onPressed: (){} ,
                child: new Text('Check Out',style: TextStyle(color: Colors.white),),
                color: Colors.red,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}