import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/model/new_feed_json.dart';
import 'package:travel_app/model/sites_json.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Travel App",
                  style: TextStyle(
                      color: Color(0xff0095f6),
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                ),
                IconButton(
                  icon: Icon(Icons.add_a_photo_rounded),
                  onPressed: null,
                )
              ],
            ),
          ),
        ),
      ),
      body: getBody(size),
    );
  }

  Widget getBody(size) {
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              sites.length,
              (index) {
                return Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffA844A1),
                                Color(0xffAB429A),
                                Color(0xffB43C88),
                                Color(0xffC33269),
                                Color(0xffD7243F),
                                Color(0xffF9A326),
                                Color(0xffF9DD26),
                              ],
                            ),
                          ),
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2, color: Color(0xffffffff)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      sites[index]["imageUrl"].toString()),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          sites[index]["username"].toString(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Divider(),
        Column(
          children: List.generate(
            newFeeds.length,
            (index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffA844A1),
                                    Color(0xffAB429A),
                                    Color(0xffB43C88),
                                    Color(0xffC33269),
                                    Color(0xffD7243F),
                                    Color(0xffF9A326),
                                    Color(0xffF9DD26),
                                  ],
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(2),
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xffffffff),
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(newFeeds[index]
                                              ["profile"]
                                          .toString()),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              newFeeds[index]["username"].toString(),
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Icon(FontAwesome.ellipsis_v, size: 15),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      height: 20,
                      child: Text(
                        newFeeds[0]["caption"].toString(),
                        style: TextStyle(
                            color: Color(
                              0xff000000,
                            ),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              newFeeds[index]['imageUrl'].toString()),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              splashRadius: 15,
                              icon: SvgPicture.asset("assets/icons/heart.svg",
                                  width: 25, height: 25),
                              onPressed: null,
                            ),
                            IconButton(
                              splashRadius: 15,
                              icon: Icon(
                                FontAwesome.commenting_o,
                                size: 25,
                                color: Color(0xff000000),
                              ),
                              onPressed: null,
                            ),
                            IconButton(
                              splashRadius: 15,
                              icon: SvgPicture.asset("assets/icons/share.svg",
                                  width: 25, height: 25),
                              onPressed: null,
                            ),
                          ],
                        ),
                        IconButton(
                          icon:
                              Icon(Feather.bookmark, color: Color(0xff000000)),
                          onPressed: null,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${newFeeds[index]["likes"].toString()} like ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(height: 8),
                        Text(
                          newFeeds[index]["comments"].toString(),
                          style: TextStyle(
                            color: Color(0xffC8C8C8),
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Container(
                              width: (size.width - 30) * 0.7,
                              child: Row(
                                children: [
                                  Container(
                                    height: 28,
                                    width: 28,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: Color(0xffC8C8C8),
                                      ),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          newFeeds[index]["profile"].toString(),
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 25,
                                    width: (size.width - 70) * 0.7,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 10, left: 10, right: 10),
                                      child: TextField(
                                        cursorColor:
                                            Color(0xff000000).withOpacity(0.5),
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Add a comment",
                                          hintStyle: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff000000)
                                                .withOpacity(0.5),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: (size.width - 30) * 0.3,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("🥰"),
                                  SizedBox(width: 8),
                                  Text("😎"),
                                  SizedBox(width: 8),
                                  Icon(
                                    Icons.add_circle_outline,
                                    size: 20,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          newFeeds[index]['dateTime'].toString(),
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff000000),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
