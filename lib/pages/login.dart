import 'package:flutter/material.dart';
import 'registerstionpage.dart';
import 'package:flutter_ecomrs/Home.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey=GlobalKey<FormState>();
  String m="kolo tmm";
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          /*
          //L goz2 bta3 l indcator
          Visability(
            visible:Loading??true,
            child:Center(
              alignment:Alignment.center,
              color:Colors.white.withOpacity(0.9),
              child:CircularProgressIndicator(
                valueColor:AlwaysStoppedAnimation<Color>(Colors.red)
              ),
            ),
          ),
           */
          Image.asset('images/yelldre.jpg',fit: BoxFit.cover, width: double.infinity,),
          Container(
            color: Colors.black.withOpacity(0.4),
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            padding: EdgeInsets.only(top: 80),
              alignment: Alignment.topCenter,
              child: Image.asset('images/lg.png', width: 280.0, height: 240.0,)),
            ListView(
                children: <Widget>[  
                       Center(
                child: Padding(
                padding: const EdgeInsets.only(top: 250.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Center(
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white.withOpacity(0.8),
                              elevation: 0.0,
                               child: Padding(
                                 padding: const EdgeInsets.only(left: 12.0),
                                 child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    icon: Icon(Icons.alternate_email),
                                    border: InputBorder.none,
                                    //border: OutlineInputBorder(),
                                    //labelText: "Email *",isDense: true
                                  ),
                                  //hwa hnaby3mal check lw l email aly da5lto d mashy m3 l pattern wla laa w lw mesh mashy hayrag3 msg y2olk ano mesh mashy m3ah 
                                  validator: (value) {
                                          if (value.isEmpty) {
                                            Pattern pattern =
                                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                            RegExp regex = new RegExp(pattern);
                                            if (!regex.hasMatch(value))
                                              return 'Please make sure your email address is valid';
                                            else
                                              return null;
                                          }
                                        },
                                  keyboardType: TextInputType.emailAddress,
                                  controller: _emailTextController,

                              ),
                               ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white.withOpacity(0.8),
                              elevation: 0.0,
                               child: Padding(
                                 padding: const EdgeInsets.only(left: 12.0),
                                 child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    icon: Icon(Icons.lock_outline),
                                    border: InputBorder.none,
                                    //border: OutlineInputBorder(),
                                    //labelText: "Email *",isDense: true
                                  ),
                                  validator: (value){
                                    if (value.isEmpty) {
                                      return "The Password Field cannot be Empty";
                                    }else if (value.length < 6) {
                                      return "The Password has To be at least 6 charactars long";
                                    }
                                    return null;
                                  },
                                  //keyboardType: TextInputType.,
                                  obscureText: true,
                                  controller: _passwordTextController,

                              ),
                               ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.red.withOpacity(1.0),
                              elevation: 0.0,
                               child: MaterialButton(
                                 onPressed:() async {
                                   if(_formkey.currentState.validate()){
                                     Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context)=>new HomePage()));
                                   }
                                 } ,
                                 minWidth: MediaQuery.of(context).size.width,
                                 child: Text("Login",textAlign: TextAlign.center,
                                 style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),
                                 ),
                               ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: (){},
                                child: Text("Forgot password", textAlign: TextAlign.center, style: TextStyle(color: Colors.blue,  fontWeight: FontWeight.w400,),)),
                            ),
                            Divider(color: Colors.white,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                  onTap: (){
                                    Navigator.push(context, new MaterialPageRoute(builder: (context)=>new SignUp() ));
                                  },
                                   child: RichText(
                                  text: TextSpan(
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16.0),
                                  children:[
                                    TextSpan(
                                      text: "Dont't have an accout? click here to"
                                    ),
                                    TextSpan(
                                        text: " sign up!",
                                      style: TextStyle(color: Colors.red)

                                    )
                                  ]
                                )),
                              )
//                            Text("Dont't have an accout? click here to sign up!",textAlign: TextAlign.end, style: TextStyle(color: Colors.white,  fontWeight: FontWeight.w400, fontSize: 16.0),),
                            ),
                            

                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ),
          ]
            ),
          
        ],
      ),
      /*
      bottomNavigationBar: Container(
        //hna han7ot l zorar bta3 login
        child: Row(
          children: <Widget>[
            Expanded(
              child: new MaterialButton(
                onPressed: (){} ,
                child: new Text('LogIn Now',style: TextStyle(color: Colors.white),),
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      */
    );
  }
  
}

