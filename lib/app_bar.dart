import 'package:flutter/material.dart';

class DatingAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 50,
      titleSpacing: 8,
      backgroundColor: Color(0xFF0E0D0D),
      elevation: 0,
      title: Row(
        children: [
          Stack(
            children: [
              Icon(
                Icons.location_on,
                size: 20,
                color: Colors.black,
              ),
              Positioned.fill(
                child: Icon(
                  Icons.location_on,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(width: 4),
          Text(
            '목이길어슬픈기린님의 새로운 스팟',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
      actions: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              color: Color(0x8f8a8a),
            ),
            minimumSize: Size(90, 30),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          onPressed: () {
            // Add your onPressed logic here
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.star,
                size: 24,
                color: Color(0xFFFF0E73),
              ),
              SizedBox(width: 4),
              Text(
                '232,450',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Stack(
          children: [
            IconButton(
              icon: Icon(
                Icons.notifications,
                size: 24,
                color: Colors.white,
              ),
              onPressed: () {
                // Add your onPressed logic here
              },
            ),
            Positioned(
              top: 0,
              right: 0,
              child: CircleAvatar(
                radius: 1,
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}