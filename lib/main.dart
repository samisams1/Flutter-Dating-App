import 'package:flutter/material.dart';
import 'app_bar.dart';

void main() {
  runApp(DatingApp());
}

class DatingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dating App',
      home: DatingScreen(),
    );
  }
}

class DatingScreen extends StatefulWidget {
  @override
  _DatingScreenState createState() => _DatingScreenState();
}

class _DatingScreenState extends State<DatingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<String> _cardImages = [
    '100_Main Profile 01.jpg',
    '101_Main Profile 02.jpg',
    '102_Main Profile 03.jpg',
    '102_Main Profile 03.jpg',
    '102_Main Profile 03.jpg',
  ];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _showPreviousImage() {
    setState(() {
      _currentIndex = (_currentIndex - 1) % _cardImages.length;
    });
  }

  void _showNextImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _cardImages.length;
    });
  }

  void _dismissCard(DismissDirection direction) {
    setState(() {
      if (direction == DismissDirection.startToEnd) {
        _showPreviousImage();
      } else if (direction == DismissDirection.endToStart) {
        _showNextImage();
      } else {
        _cardImages.removeAt(_currentIndex);
        if (_currentIndex >= _cardImages.length) {
          _currentIndex = _cardImages.length - 1;
        }
        if (_cardImages.isEmpty) {
          _cardImages = ['110_No Cards.jpg'];
          _currentIndex = 0;
        }
      }
    });
  }

  Widget _buildIndicator() {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          _cardImages.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                _currentIndex = index;
              });
            },
            child: Container(
              width: 50,
              height: 4,
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                color: index == _currentIndex ? Color(0xFFFF0E73) : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DatingAppBar(),
      body: Center(
        child: _cardImages.isNotEmpty
            ? Dismissible(
                key: UniqueKey(),
                direction: DismissDirection.horizontal,
                onDismissed: (direction) {
                  setState(() {
                    _dismissCard(direction);
                  });
                },
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/${_cardImages[_currentIndex]}',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                    Positioned(
                      top: 16,
                      left: 16,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: _showPreviousImage,
                      ),
                    ),
                    Positioned(
                      top: 16,
                      right: 16,
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward),
                        onPressed: _showNextImage,
                      ),
                    ),
                    _buildIndicator(),
                    Positioned(
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
            color: Colors.white, // Set the text color to a specific color
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
      SizedBox(width: 10), // Adjust the width as per your preference
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
),Padding(
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
                          const SizedBox(height: 2), // Add more space
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
    child: Text(
      '🍸 전혀 안 함',
      style: TextStyle(
        color: Colors.white,
        fontSize: 10,
        fontWeight: FontWeight.w700,
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
  child: Center(
    child: Text(
     '🚬 전혀 안 함',
      style: TextStyle(
        color: Colors.white,
        fontSize: 10,
        fontWeight: FontWeight.w700,
      ),
    ),
  ),
),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5), // Add more space
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
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
            text: ' 매일 1시간 이상',
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
)
                              ],
                            ),
                          ),
                          const SizedBox(height: 5), // Add more space
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
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
                                Container(
  width: 60,
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
                ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : Center(
                child: Text('No cards available'),
              ),
      ),
    );
  }
}