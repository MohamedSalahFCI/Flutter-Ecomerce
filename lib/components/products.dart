import 'package:flutter/material.dart';
//hna a7na han3ml list of products w b3den han list of product dh in our grideView
//l Goz2 dh moham gadn gadn gadn fe goz2 l Backend fe 7alt ank hatgeb 7aga mn l data base w 3ayz ta3rdha aw 7aga 
//lw hatgeb m3lomat mn malf json f anta hat7tag l list dh w kool l klam aly a7na han2olo hna  
import 'package:flutter_ecomrs/pages/productDetails.dart';


class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList=[
    //hna han3mal maps 3shan talf 3la kool l 7aga aly 3ndy ''Video 13" w 3shan t3mal map hatst5dam l {} dool 
    {
      //hna haykon 3ndy magmo3a mn l attributes .. l key ana hast5dmha 3la tool lw ana 3ayz access ay 7aga 
      "name":"Blazer",
      "picture":"images/productsimg/blazer1.jpeg",
      "old_price":120,
      "price":80,
    },
    {
      //hna haykon 3ndy magmo3a mn l attributes .. l key ana hast5dmha 3la tool lw ana 3ayz access ay 7aga 
      "name":"redDress",
      "picture":"images/productsimg/dress1.jpeg",
      "old_price":300,
      "price":135,
    },
    {
      //hna haykon 3ndy magmo3a mn l attributes .. l key ana hast5dmha 3la tool lw ana 3ayz access ay 7aga 
      "name":"New Blazer",
      "picture":"images/productsimg/blazer2.jpeg",
      "old_price":250,
      "price":110,
    },
    {
      //hna haykon 3ndy magmo3a mn l attributes .. l key ana hast5dmha 3la tool lw ana 3ayz access ay 7aga 
      "name":"Dress",
      "picture":"images/productsimg/dress2.jpeg",
      "old_price":320,
      "price":85,
    },
    {
      //hna haykon 3ndy magmo3a mn l attributes .. l key ana hast5dmha 3la tool lw ana 3ayz access ay 7aga 
      "name":"hill1",
      "picture":"images/productsimg/hills1.jpeg",
      "old_price":220,
      "price":95,
    },
    {
      //hna haykon 3ndy magmo3a mn l attributes .. l key ana hast5dmha 3la tool lw ana 3ayz access ay 7aga 
      "name":"hils2",
      "picture":"images/productsimg/hills2.jpeg",
      "old_price":450,
      "price":320,
    },
    {
      //hna haykon 3ndy magmo3a mn l attributes .. l key ana hast5dmha 3la tool lw ana 3ayz access ay 7aga 
      "name":"jens",
      "picture":"images/productsimg/pants2.jpeg",
      "old_price":300,
      "price":135,
    },
    {
      //hna haykon 3ndy magmo3a mn l attributes .. l key ana hast5dmha 3la tool lw ana 3ayz access ay 7aga 
      "name":"pants",
      "picture":"images/productsimg/pants1.jpg",
      "old_price":220,
      "price":150,
    },
    {
      //hna haykon 3ndy magmo3a mn l attributes .. l key ana hast5dmha 3la tool lw ana 3ayz access ay 7aga 
      "name":"shoe",
      "picture":"images/productsimg/shoe1.jpg",
      "old_price":300,
      "price":135,
    },
    {
      //hna haykon 3ndy magmo3a mn l attributes .. l key ana hast5dmha 3la tool lw ana 3ayz access ay 7aga 
      "name":"skt",
      "picture":"images/productsimg/skt1.jpeg",
      "old_price":300,
      "price":135,
    },
    {
      //hna haykon 3ndy magmo3a mn l attributes .. l key ana hast5dmha 3la tool lw ana 3ayz access ay 7aga 
      "name":"skt2",
      "picture":"images/productsimg/skt2.jpeg",
      "old_price":300,
      "price":135,
    }

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context,int index){
        return SingleProduct
      (
          productName: productList[index]['name'],
          productPic: productList[index]['picture'],
          productOldPrice: productList[index]['old_price'],
          productPrice: productList[index]['price'],

        );
      }
      
    );
  }
}


class SingleProduct extends StatelessWidget {
  final productName;
  final productPic;
  final productOldPrice;
  final productPrice;

  SingleProduct
({
      this.productName, 
      this.productPic,
      this.productOldPrice,
      this.productPrice
  });

  @override
  Widget build(BuildContext context) {
    return Card (
      child: Hero(tag: productName,child: Material
      (child: InkWell(
        onTap: ()=>Navigator.of(context).push(new MaterialPageRoute(
          //passing the value to another page
          builder: (context)=>new ProductDetails(
            productDetailName: productName,
            productDetailNewPrice: productPrice,
            productDetailOldPrice: productOldPrice,
            productDetailPic: productPic,
          )
        )),
        child:GridTile(
          footer: Container(
            color: Colors.white70,
            child: ListTile(
              leading: Text(productName,style: TextStyle(fontWeight: FontWeight.bold ),),
              title: Text("\$$productPrice",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w800),),
              subtitle: Text(
                "\$$productOldPrice",
                style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w800,decoration: TextDecoration.lineThrough ),
              ),
              ),
          ),
          child: Image.asset(productPic,
          fit: BoxFit.cover,),
        
        ) ,
      ),),),
    );
  }
}





