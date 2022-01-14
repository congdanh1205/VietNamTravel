import 'package:flutter/material.dart';

class ActivityScreen extends StatefulWidget {
  @override
  ActivityScreenState createState() => ActivityScreenState();
}

class ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('Activity Screen'),
    ));
  }
}
