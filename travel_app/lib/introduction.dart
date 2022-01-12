import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Introduction extends StatefulWidget {
  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  int _current = 0;
  final List<String> imageList = [
    "https://toplist.vn/images/800px/vinh-ha-long-15987.jpg",
    "http://divui.com/blog/wp-content/uploads/2018/10/111111.jpg",
    "http://static2.yan.vn/YanNews/2167221/201709/20170905-083003-h1_600x410.jpg"
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    Widget _textSection(String text, double fontSize) {
      return Container(
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.black,
            fontWeight: FontWeight.w900,
          ),
        ),
      );
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.all(30),
                margin: EdgeInsets.only(top: 30),
                child: CarouselSlider(
                  items: imageList
                      .map(
                        (e) => ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.network(
                                e,
                                width: 200,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      autoPlay: true,
                      initialPage: 0,
                      reverse: false,
                      autoPlayInterval: Duration(seconds: 2),
                      autoPlayAnimationDuration: Duration(milliseconds: 2000),
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reson) {
                        setState(() {
                          _current = index;
                        });
                      }),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(
                  imageList,
                  (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            _current == index ? Colors.blueAccent : Colors.grey,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 60,
              ),
              _textSection("Bạn muốn đi đâu", 30),
              SizedBox(
                height: 40,
              ),
              _textSection("VietTravel không làm bạn thất vọng", 14),
              _textSection("Mở App ngay", 14),
              SizedBox(
                height: 60,
              ),
              Container(
                child: Center(
                  child: SizedBox(
                    width: 300,
                    height: 60,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.cyanAccent,
                      padding: EdgeInsets.all(20),
                      onPressed: () {
                        // BuildNavigator.push(context,
                        //MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        'Đăng nhập',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Center(
                  child: SizedBox(
                    width: 300,
                    height: 60,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.white,
                      padding: EdgeInsets.all(20),
                      onPressed: () {
                        // BuildNavigator.push(context,
                        //MaterialPageRoute(builder: (context) => SignUp()));
                        // ThisNavigator.push(
                        // context,
                        // MaterialPageRoute(
                        //builder: (context) => Introduction()));
                      },
                      child: Text(
                        'Đăng kí',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
