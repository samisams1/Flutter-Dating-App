import 'package:flutter/material.dart';

class CardWidget3 extends StatelessWidget {
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
            padding: const EdgeInsets.only(left: 10, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 157,
                  height: 41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Color(0xFFFF016B),
                      width: 1,
                    ),
                    color: Color.fromRGBO(98, 17, 51, 0.7),
                  ),
                  padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '💖',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: Colors.red,
                          ),
                        ),
                        TextSpan(
                          text: ' 진지한 연애를 찾는 중',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
            Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                               Container(
  width: 90,
  height: 30,
  margin: const EdgeInsets.only(right: 8),
  decoration: BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(18),
  ),
  child: Center(
   child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '🍸',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Colors.yellow,
            ),
          ),
          TextSpan(
            text: '전혀 안 함',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  ),
),
                                Container(
  width: 110,
  height: 30,
  margin: const EdgeInsets.only(right: 8),
  decoration: BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(18),
  ),
   child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '🚬',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Colors.yellow,
            ),
          ),
          TextSpan(
            text: '전혀 안 함',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
),
                              ],
                            ),
                          ),
         Container(
  width: 110,
  height: 30,
  margin: const EdgeInsets.only(right: 8),
  decoration: BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(18),
  ),
  child: Center(
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '💪🏻',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Colors.yellow,
            ),
          ),
          TextSpan(
            text: '매일 1시간 이상',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  ),
),
      Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Container(
                  width: 90,
                  height: 30,
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(18),
                  ),
                child: Center(
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '🤝',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Colors.yellow,
            ),
          ),
          TextSpan(
            text: '만나는 걸 좋아함',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  ),
                ),
                                            Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Container(
      width: 110,
      height: 30,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Center(
        child: Text(
          'INFP',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.w700,
          ),
        ),
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
),      ],
            ),
          ),

        ],
      ),
    );
  }
}