import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen>{
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(40.0),
      child: Form(
        child: Column(
          children:[
            emailField(),
            //passwordField(),
            //submitButton(),
          ],
        ),
      ),
    );
  }
  Widget emailField(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com'
      ),
    );
  }
  Widget passwordField(){

  }
  Widget submitButton(){

  }
}