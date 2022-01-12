import 'package:flutter/material.dart';
import 'package:travel_app/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel App',
          style: TextStyle(color: Colors.black)
        ),
        backgroundColor: Colors.white,
      ),
      body: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

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
            child: Text('Đăng Kí',
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
              labelText: 'Họ và Tên',
              hintText: 'Họ và Tên',
              border:OutlineInputBorder(
                borderRadius:BorderRadius.circular(30),
                ),
            ),
          ),
          SizedBox(height: 25),
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.phone),
              labelText: 'Số điện thoại',
              hintText: 'Số điện thoại',
              border:OutlineInputBorder(
                borderRadius:BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(height: 25),
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              labelText: 'Email',
              hintText: 'Email',
              border:OutlineInputBorder(
                borderRadius:BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(height: 25),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: 'Mật khẩu',
              hintText: 'Mật khẩu',
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
                        //Navigator.push(
                        //  context,
                        //  MaterialPageRoute(
                        //      builder: (context) => Login()));
                      },
                      child: Text(
                        'Đăng Kí',
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
            children:[
              Text(
                'Bạn đã có tài khoản?', 
                style: TextStyle(
                color: Colors.black,
                fontSize: 14,),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                },
                child: Text(
                  'Đăng nhập',
                  style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 14,),
                  ),
              ),
            ],
          ),
        ],
        ),
    );
  }
}