import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen>{
  String email_id = '';
  String password = '';
  final formkey = GlobalKey<FormState>();
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(40.0),
      child: Form(
        key: formkey,
        child: Column(
          children:[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 20.0),),
            submitButton(),
          ],
        ),
      ),
    );
  }
  Widget emailField(){



    return TextFormField(

      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com'
      ),
      validator: (String value){
        //return null if valid
        // otherwise string (with the error message) if invalid
        if(!value.contains('@')){
          return 'Please enter a valid email';
        }
        return null;
      },
      onSaved: (String value){
        email_id = value;
      },
    );
  }
  Widget passwordField(){
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Password"
      ),
      validator: (String value){
        if(value.length<4){
          return 'Please enter at least 4 characters';
        }
        return null;
      },
      onSaved: (String value){
        password = value;
      },
    );

  }
  Widget submitButton(){
    return RaisedButton(
      color: Colors.blue,
      child: Text('Submit'),
      onPressed: () {
        if(formkey.currentState.validate()){
          formkey.currentState.save();
        }
      },
    );
  }
}