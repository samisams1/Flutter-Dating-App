import 'package:flutter/material.dart';

class CardWidget2 extends StatelessWidget {
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
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  '잭과분홍콩나물',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '25',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w100,
                  ),
                ),
         
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
  Text(
  '서로 아껴주고 힘이 되어줄 사람 찾아요\n선릉으로 직장 다니고 있고 여행 좋아해요\n이상한 이야기하시는 분 바로 차단입니다',
  textAlign: TextAlign.center,
  maxLines: 3,
  style: TextStyle(
  color: Color(0xFFD9D9D9),
  ),
),
             
                 SizedBox(width: 50), // Adjust the desired spacing here
    Align(
      alignment: Alignment.topRight,
      child: Image.asset(
        'assets/images/btcon_48.png',
        width: 50,
        height: 50,
        fit: BoxFit.fill,
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