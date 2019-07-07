import 'package:flutter/material.dart';
import 'Home.dart';
import 'package:flutter_ecomrs/pages/login.dart';
//import 'package:flutter_ecomrs/pages/login.dart';
/*

  firebase_auth: ^0.6.6 
  cloud_firestore: ^0.8.2+3
  google_sign_in: ^4.0.1+1
  shared_preferences: ^0.5.1+1
 */
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false ,
      theme: ThemeData(
        primaryColor: Colors.red.shade900
      ),
      //home: HomePage(),
      home: LoginPage(),
    )
  ); 
}
 
