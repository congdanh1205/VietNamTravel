import 'package:flutter/material.dart';

class editProfile extends StatefulWidget {
  const editProfile({ Key? key }) : super(key: key);

  @override
  _editProfileState createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông tin cá nhân',
          style: TextStyle(color: Colors.black)
        ),
        backgroundColor: Colors.white,
      ),
      body: HomePageProfile(),
    );
  }
}
class HomePageProfile extends StatefulWidget {
  const HomePageProfile({ Key? key }) : super(key: key);

  @override
  _HomePageProfileState createState() => _HomePageProfileState();
}

class _HomePageProfileState extends State<HomePageProfile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
            SizedBox(
              height: 115,
              width: 115,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/avatar.jpg"),
                  ),
                  
                ],
              )
            ),
        ],
      ),
    );
  }
}