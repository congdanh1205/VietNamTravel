import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cài đặt',
          style: TextStyle(color: Colors.black)
        ),
        backgroundColor: Colors.white,
      ),
      body: HomePageSettings(),
    );
  }
}
class HomePageSettings extends StatefulWidget {
  const HomePageSettings({ Key? key }) : super(key: key);

  @override
  _HomePageSettingsState createState() => _HomePageSettingsState();
}

class _HomePageSettingsState extends State<HomePageSettings> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      
      child: Column(
        children: [
            
             TextButton(
                style: TextButton.styleFrom(
                padding: EdgeInsets.all(20),
                shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                backgroundColor: Color(0xFFF5F6F9),
                ),
                onPressed: (){
                   //Navigator.push(context,MaterialPageRoute(builder: (context) => Password()));
                },
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Expanded(child: Text('Thông báo')),
                    Icon(Icons.notifications),
                  ],
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                padding: EdgeInsets.all(20),
                shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                backgroundColor: Color(0xFFF5F6F9),
                ),
                onPressed: (){},
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Expanded(child: Text('Địa chỉ')),
                    Icon(Icons.map),
                  ],
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                padding: EdgeInsets.all(20),
                shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                backgroundColor: Color(0xFFF5F6F9),
                ),
                onPressed: (){},
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Expanded(child: Text('Đơn vị thanh toán')),
                    Icon(Icons.money),
                  ],
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                padding: EdgeInsets.all(20),
                shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                backgroundColor: Color(0xFFF5F6F9),
                ),
                onPressed: (){},
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Expanded(child: Text('Điều khoản dịch vụ')),
                    Icon(Icons.book),
                  ],
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                padding: EdgeInsets.all(20),
                shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                backgroundColor: Color(0xFFF5F6F9),
                ),
                onPressed: (){},
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Expanded(child: Text('Trung tâm trợ giúp')),
                    Icon(Icons.help),
                  ],
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                padding: EdgeInsets.all(20),
                shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                backgroundColor: Color(0xFFF5F6F9),
                ),
                onPressed: (){},
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Expanded(child: Text('Đăng xuất')),
                    Icon(Icons.logout),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}