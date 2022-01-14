import 'package:flutter/material.dart';

class NewPost extends StatefulWidget {
  @override
  NewPostState createState() => NewPostState();
}

class NewPostState extends State<NewPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('Newpost Screen'),
    ));
  }
}
