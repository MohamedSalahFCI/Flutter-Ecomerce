import 'package:flutter/material.dart';
import 'package:flutter_ecomrs/Home.dart';
class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailNewPrice;
  final productDetailOldPrice;
  final productDetailPic;

  ProductDetails({
    this.productDetailName,
    this.productDetailNewPrice,
    this.productDetailOldPrice,
    this.productDetailPic
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
          //onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>new HomePage())),
          //3shan nasbat l navigation haykon hya dh l se8a bta3tna
          onTap: ()=>Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>new HomePage())),
          child: Text('Fashapp')),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search ,color: Colors.white,),onPressed: (){},),
          //new IconButton(icon: Icon(Icons.shopping_cart ,color: Colors.white,),onPressed: (){},)
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 200.0,
            child: GridTile(
              child: Container(
                color:Colors.white,
                child: Image.asset(widget.productDetailPic),
                //child: Image.asset(widget.productDetailPic,fit: BoxFit.fitWidth,), //hna d l back ground bta3 l container nafso 
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile (
                  leading:new Text(widget.productDetailName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0 ),) ,
                  title:new Row(
                    children: <Widget>[
                      /*
                      hna ya m3alm hatkon ganb ba3d awy laken l 3ayez banhom msafat kwysa hatkon l Expand
                      Text('sss '),
                      Text('scac')
                      */                      
                      Expanded(
                        child: new Text("\$${widget.productDetailOldPrice}",
                        style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w800,decoration: TextDecoration.lineThrough ),
                        ),
                      ),
                      Expanded(
                        child: new Text("\$${widget.productDetailNewPrice }",
                        style: TextStyle(color: Colors.red,fontWeight: FontWeight.w800),
                        ),
                      ),

                    ],
                  ),
                  /*
                   new Text(widget.productDetailName,style: TextStyle(fontWeight: FontWeight.bold ),),
                  subtitle: new Text(widget.productDetailName,style: TextStyle(fontWeight: FontWeight.bold ),),
                */
                ),
              ),
            ),
          ),
          //------- the first Button ------------
          Row(
            children: <Widget>[
              //--------------the size Button
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("Size"),
                      content: new Text("choose the Size "),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          //hna 3shan awal mados 3lazorar l close yarg3ny tany ll context aly wa2af feeh 
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("Colse"),
                        )
                      ],
                    );
                  } );
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation:2.0 ,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text('Size'),),
                    Expanded(child: new Icon(Icons.arrow_drop_down),),
                  ],
                ),
                ),
              ),
              //---the second Button the color
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("Colors"),
                      content: new Text("choose a color "),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          //hna 3shan awal mados 3lazorar l close yarg3ny tany ll context aly wa2af feeh 
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("Colse"),
                        )
                      ],
                    );
                  } );
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation:2.0 ,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text('Color'),),
                    Expanded(child: new Icon(Icons.arrow_drop_down),),
                  ],
                ),
                ),
              ),
              //------hna l Button bta3 l quantity
              Expanded(
                //hna momoken n3mal flex ll Expended dh 3shan ya5od msafa aktar mn a5wato 3ady
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("Quantity"),
                      content: new Text("choose the Quantity "),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          //hna 3shan awal mados 3lazorar l close yarg3ny tany ll context aly wa2af feeh 
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("Colse"),
                        )
                      ],
                    );
                  } );
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation:2.0 ,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text('Qty'),),
                    Expanded(child: new Icon(Icons.arrow_drop_down),),
                  ],
                ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              //--------------the Buy Now  Button
              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.red,
                textColor: Colors.white,
                elevation:2.0 ,
                child: new Text('Buy Now')
                ),
              ),
              //l klam dh bara l Expended 3shan kda sa8ar shwya bass mn l Bar laken lw kamt gwa l Expended kant hta5od msafat mtsawya
              new IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.red,),onPressed: (){},),
              new IconButton(icon: Icon(Icons.favorite_border,color: Colors.red),onPressed: (){},),
            ],
          ),
          Divider(color: Colors.red,),
          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
          ),
          Divider(color: Colors.red,),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product name",style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.productDetailName),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product brand",style: TextStyle(color: Colors.grey),),
              ),
              //Remain to add prodiuct brand
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text("Brand X"),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product condition",style: TextStyle(color: Colors.grey),),
              ),
              //Remain to Add product Conditions
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text("condition X"),
              )
            ],
          ),
          Divider(color: Colors.red,),
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Similar Products',style: TextStyle(fontWeight: FontWeight.w500),),),
          Container(
            height: 650,
            child: similarProducts(),
          ),
          Divider(color: Colors.red,),
        ],
      ),
    );
  }
}

class similarProducts extends StatefulWidget {
  @override
  _similarProductsState createState() => _similarProductsState();
}

class _similarProductsState extends State<similarProducts> {
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
