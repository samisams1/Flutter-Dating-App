import 'package:flutter/material.dart';

class DatingAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return AppBar(
      toolbarHeight: screenHeight * 0.08,
      titleSpacing: screenWidth * 0.02,
      backgroundColor: Color(0xFF0E0D0D),
      elevation: 0,
      title: Row(
        children: [
          Stack(
            children: [
              Icon(
                Icons.location_on,
                size: screenWidth * 0.05,
                color: Colors.black,
              ),
              Positioned.fill(
                child: Icon(
                  Icons.location_on,
                  size: screenWidth * 0.05,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(width: screenWidth * 0.01),
          Expanded(
            child: Text(
              '목이길어슬픈기린님의 새로운 스팟',
              style: TextStyle(
                fontSize: screenWidth * 0.045,
                color: Colors.white,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
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
            minimumSize: Size(screenWidth * 0.22, screenHeight * 0.05),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(screenWidth * 0.01),
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
                size: screenWidth * 0.06,
                color: Color(0xFFFF0E73),
              ),
              SizedBox(width: screenWidth * 0.01),
              Text(
                '232,450',
                style: TextStyle(
                  fontSize: screenWidth * 0.045,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: screenWidth * 0.02),
        Stack(
          children: [
            IconButton(
              icon: Icon(
                Icons.notifications,
                size: screenWidth * 0.06,
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
                radius: screenWidth * 0.015,
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
        SizedBox(width: screenWidth * 0.02),
      ],
    );
  }
}
