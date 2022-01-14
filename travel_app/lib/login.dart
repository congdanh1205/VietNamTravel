import 'package:flutter/material.dart';
import 'package:travel_app/sign_up.dart';

import 'pages/home_screen.dart';
import 'pages/root_app.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel App', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(top: 25),
            child: Text(
              'Đăng Nhập',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 25,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              labelText: 'Tài khoản',
              hintText: 'Tài khoản',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(height: 40),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: 'Mật khẩu',
              hintText: 'Mật khẩu',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            child: Center(
              child: SizedBox(
                width: 230,
                height: 55,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.cyanAccent,
                  padding: EdgeInsets.all(20),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RootApp()));
                  },
                  child: Text(
                    'Đăng Nhập',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bạn không có tài khoản?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text(
                  'Đăng Ký',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
