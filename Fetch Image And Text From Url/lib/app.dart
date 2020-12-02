//Import flutter helper library
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'dart:convert';
import 'widgets/image_list.dart';

//Create a class that will be our custom widget
// This class must extend the 'StatelessWidget' base class
class App extends StatefulWidget{
  createState(){
    return AppState();
  }
}

class AppState extends State<App>{
  // Must define a 'build' method that returns
  // the widgets that *this* widget will show
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter +=1;
    var response= await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }

  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        appBar: AppBar(title: Text('Pratik Pathak'),),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            fetchImage();
          },
        ),
      ),
    );
  }
}