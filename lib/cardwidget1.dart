import 'package:flutter/material.dart';

class CardWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16,
      left: 16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 70,
            height: 30,
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    '⭐',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.6,
                      height: 16.71 / 14,
                      fontFamily: 'Pretendard',
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '29,930',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.6,
                      height: 16.71 / 14,
                      fontFamily: 'Pretendard',
                    ),
                  ),
                ],
              ),
            ),
          ),
Padding(
  padding: const EdgeInsets.only(left: 10, right: 10),
  child: LayoutBuilder(
    builder: (context, constraints) {
      double spacing = 20.0;
      double imageSize = 50.0;

      if (constraints.maxWidth > 400) {
        spacing = 30.0;
        imageSize = 60.0;
      }

      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                '잭과분홍콩나물',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '25',
                style: TextStyle(
                  color: Color(0xFFD9D9D9),
                  fontSize: 24,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
             SizedBox(width: spacing),
          Container(
            alignment: Alignment.topRight,
            child: Image.asset(
              'assets/images/btcon_48.png',
              width: imageSize,
              height: imageSize,
              fit: BoxFit.fill,
            ),
          ),
        ],
      );
    },
  ),
),


  Padding(
  padding: const EdgeInsets.only(left: 10),
  child: Row(
    children: [
      Text(
        '서울. 2km 거리에 있음',
        style: TextStyle(
          color: Color(0xFFD9D9D9),
          fontWeight: FontWeight.w700,
        ),
      ),
    ],
  ),
),
        ],
      ),
    );
  }
}