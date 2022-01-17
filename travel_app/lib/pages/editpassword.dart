import 'package:flutter/material.dart';

class editPassword extends StatefulWidget {
  const editPassword({ Key? key }) : super(key: key);

  @override
  _editPasswordState createState() => _editPasswordState();
}

class _editPasswordState extends State<editPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đổi mật khẩu',
          style: TextStyle(color: Colors.black)
        ),
        backgroundColor: Colors.white,
      ),
      body: HomePagePassword(),
    );
  }
}
class HomePagePassword extends StatefulWidget {
  const HomePagePassword({ Key? key }) : super(key: key);

  @override
  _HomePagePasswordState createState() => _HomePagePasswordState();
}

class _HomePagePasswordState extends State<HomePagePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(top: 20),
            child: Text('Đổi mật khẩu',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 25,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.password),
              hintText: 'Nhập mật khẩu cũ',
              border:OutlineInputBorder(
                borderRadius:BorderRadius.circular(30),
                ),
            ),
          ),
          SizedBox(height: 25),
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.password),
              hintText: 'Nhập mật khẩu mới',
              border:OutlineInputBorder(
                borderRadius:BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(height: 25),
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.password),
              hintText: 'Xác nhận mật khẩu mới',
              border:OutlineInputBorder(
                borderRadius:BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            child: Center(
              child: SizedBox(
                width: 250,
                height: 55,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                      color: Colors.cyanAccent,
                      padding: EdgeInsets.all(20),
                      onPressed: () {
                        //Navigator.push(context,MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        'Lưu',
                        style: TextStyle(
                            color: Colors.black,
                            
                            ),
                      ),
                      
                ),
              ),
            ),
          ),
        ],
        ),
    );
  }
}