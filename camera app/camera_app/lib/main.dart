import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
 
void main() {
  runApp(Cameraapp());
  
}
class Cameraapp extends StatefulWidget {
  @override
  _CameraappState createState() => _CameraappState();
}

class _CameraappState extends State<Cameraapp> {
    File _image;

      Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "camera app",
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("camera app"),
          
        ),
        
           body: Center(
        child: _image == null
            ? Text('No image selected.')
            : Image.file(_image),
        ),
        floatingActionButton: FloatingActionButton(
        // onPressed: getImage,
        onPressed: _neverSatisfied,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
      ),
    );
    
  }
  Future<void> _neverSatisfied() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Rewind and remember'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('You will never be satisfied.'),
              Text('You\’re like me. I’m never satisfied.'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Regret'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
}
