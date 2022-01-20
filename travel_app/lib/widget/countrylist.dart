import 'package:flutter/material.dart';

class CountryListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              "https://img.nhandan.com.vn/Files/Images/2020/11/23/cau_vang-1606136660846.jpg",
              height: 200,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10, left: 8, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Đà Nẳng",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "18 Chuyến",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 13),
                    )
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10, right: 8),
            padding: EdgeInsets.symmetric(horizontal: 3, vertical: 7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white38),
            child: Row(
              children: [
                Text(
                  "4.5",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 13),
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
