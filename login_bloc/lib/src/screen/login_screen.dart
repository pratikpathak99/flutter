import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  Widget build(context){
    return Container(
      margin: EdgeInsets.all(50.0),// set the margin
      child: Column(
        children: <Widget>[
          emailField(),
          passwordField(),
          Container (margin: EdgeInsets.only(top: 25.0),),
          submitButton(),
        ],
      ),
    );
  }
  Widget emailField(){
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'you@gmail.com',
        labelText: 'Email Address',
      ),
    );
  }
  Widget passwordField(){
    return TextField(
      obscureText: true,//hide the password
      decoration: InputDecoration(
        hintText: 'Enter Your password',
        labelText: 'Password',
      ),
    );
  }
  Widget submitButton(){
    return RaisedButton(
      child: Text('Login'),
      color: Colors.blue,
      onPressed: (){},
    );
  }
}