import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/pages/account_screen.dart';
import 'package:travel_app/pages/activity_screen.dart';
import 'package:travel_app/pages/home_screen.dart';
import 'package:travel_app/pages/new_post.dart';
import 'package:travel_app/pages/search_screen.dart';

import '../model/botttom_nav_json.dart';

class RootApp extends StatefulWidget {
  @override
  RootAppState createState() => RootAppState();
}

class RootAppState extends State<RootApp> {
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getBottomNavigationBar(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: indexPage,
      children: [
        HomeScreen(),
        SearchScreen(),
        NewPost(),
        ActivityScreen(),
        AccountScreen()
      ],
    );
  }

  Widget getBottomNavigationBar() {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        border: Border(
          top: BorderSide(
            width: 1,
            color: Color(0xff000000).withOpacity(0.3),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            icons.length,
            (index) {
              return IconButton(
                onPressed: () {
                  setState(() {
                    indexPage = index;
                  });
                },
                icon: SvgPicture.asset(
                    indexPage == index
                        ? icons[index]['active'].toString()
                        : icons[index]['inactive'].toString(),
                    width: 25,
                    height: 25),
              );
            },
          ),
        ),
      ),
    );
  }
}
