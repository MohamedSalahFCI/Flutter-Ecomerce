import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formkey=GlobalKey<FormState>();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();
  TextEditingController _nameTextController = TextEditingController();
  String gender;
  String groubValue='male';
  bool hidpass=true;
  bool hidconfpass=true;
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
                                 padding: const EdgeInsets.only(left: 18.0),
                                 child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Full Name",
                                    icon: Icon(Icons.person_outline),
                                    border: InputBorder.none,
                                    //border: OutlineInputBorder(),
                                    //labelText: "Email *",isDense: true
                                  ),
                                  validator: (value){
                                    if (value.isEmpty) {
                                      return "The Name Field cannot be Empty";
                                    }else if (value.length < 2) {
                                      return "The Name has To be at least 2 charactars long";
                                    }
                                    return null;
                                  },
                                  //keyboardType: TextInputType.,
                                  //obscureText: true,
                                  controller: _nameTextController,

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
                                 padding: const EdgeInsets.only(left: 18.0),
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
                           child: new Container(
                            child: Material(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white.withOpacity(0.8),
                               child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: ListTile(
                                      title:Text("male",textAlign: TextAlign.end,style: TextStyle(color: Colors.black),),
                                      trailing:  Radio(value: "male",groupValue: groubValue,onChanged: (e)=> ValueChanged(e)),
                                    ), ),
                                    Expanded(
                                    child: ListTile(
                                      title:Text("female",textAlign: TextAlign.end,style: TextStyle(color: Colors.black),),
                                      trailing:  Radio(value: "female",groupValue: groubValue,onChanged: (e)=> ValueChanged(e)),
                                    ), ),
                                ],
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
                                 padding: const EdgeInsets.only(left: 0.0),
                                 child: ListTile(
                                  title: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      icon: Icon(Icons.lock_outline),
                                      //3shan l under line aly t7t l text dh ana mesh 3ayzo ykon zaher..MOham gadn 
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
                                    obscureText: hidpass,
                                    controller: _passwordTextController,

                              ),
                              trailing: IconButton(icon: Icon(Icons.remove_red_eye,),onPressed: (){
                                setState(() {
                                 hidpass=false; 
                                });
                              },),
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
                                 padding: const EdgeInsets.only(left: 0.0),
                                 child: ListTile(
                                 title: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Confirm Password",
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
                                      }else if (_passwordTextController.text!=value) {
                                        return "the passwords don't match";
                                      }
                                      return null;
                                    },
                                    //keyboardType: TextInputType.,
                                    obscureText: hidconfpass,
                                    controller: _confirmpasswordController,

                              ),
                              trailing: IconButton(icon: Icon(Icons.remove_red_eye,),onPressed: (){
                                setState(() {
                                 hidconfpass=false; 
                                });
                              },),
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
                                 onPressed:(){
                                   
                                 } ,
                                 minWidth: MediaQuery.of(context).size.width,
                                 child: Text("Sign Up",textAlign: TextAlign.center,
                                 style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),
                                 ),
                               ),
                            ),
                          ),
                          Divider(color: Colors.white,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                   child: RichText(
                                  text: TextSpan(
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16.0),
                                  children:[
                                    TextSpan(
                                      text: "SignUp Success? Do u Want to"
                                    ),
                                    TextSpan(
                                        text: " Login!",
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
     
      
    );
  }

  ValueChanged(e){
    setState(() {
     if (e=="male") {
      groubValue=e;
      gender=e;
     }else if (e=="female") {
       groubValue=e;
       gender=e;
     } 
    });
  }
}





