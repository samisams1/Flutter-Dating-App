import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'cardwidget1.dart';
import 'cardwidget2.dart';
import 'cardwidget3.dart';

class DatingApp extends StatefulWidget {
  @override
  _DatingAppState createState() => _DatingAppState();
}

class _DatingAppState extends State<DatingApp> {
  List<String> cardImages = [
    "assets/images/100_Main Profile 01.jpg",
    "assets/images/101_Main Profile 02.jpg",
    "assets/images/102_Main Profile 03.jpg",
    // Add more image paths if needed
  ];

  List<String> cardNames = [
    "100_Main Profile 01",
    "101_Main Profile 02",
    "102_Main Profile 03.jpg",
    // Add more card names if needed
  ];

  int currentImageIndex = 0;
  bool showNoCards = false;

  void showPreviousImage() {
    if (currentImageIndex > 0) {
      setState(() {
        currentImageIndex--;
      });
    }
  }

  void showNextImage() {
    if (currentImageIndex < cardImages.length - 1) {
      setState(() {
        currentImageIndex++;
      });
    }
  }

  void handleCardSwipe(DragEndDetails details) {
    if (details.primaryVelocity! < 0) {
      // Swiped to the left
      if (currentImageIndex < cardImages.length - 1) {
        setState(() {
          currentImageIndex++;
        });
      } else {
        setState(() {
          showNoCards = true;
        });
      }
    } else if (details.primaryVelocity! > 0) {
      // Swiped to the bottom
      if (currentImageIndex < cardImages.length - 1) {
        setState(() {
          currentImageIndex++;
        });
      } else {
        setState(() {
          showNoCards = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DatingAppBar(),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: showNoCards
                ? Text(
                    "110_No Cards",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Draggable(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Card(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Stack(
                          children: [
                            Image.asset(
                              cardImages[currentImageIndex],
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              child: IconButton(
                                icon: Icon(Icons.arrow_back),
                                color: Colors.white,
                                onPressed: showPreviousImage,
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: IconButton(
                                icon: Icon(Icons.arrow_forward),
                                color: Colors.white,
                                onPressed: showNextImage,
                              ),
                            ),
                            Positioned(
                              top: 16,
                              left: 0,
                              right: 0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  cardImages.length,
                                  (index) => GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        currentImageIndex = index;
                                      });
                                    },
                                    child: Container(
                                      width: 50,
                                      height: 4,
                                      margin: EdgeInsets.symmetric(horizontal: 4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: index == currentImageIndex ? Color(0xFFFF0E73) : Colors.white.withOpacity(0.4),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 600,
                              left: 16,
                              child: Text(
                                cardNames[currentImageIndex],
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            if (currentImageIndex == 0) CardWidget1(),
                            if (currentImageIndex == 1) CardWidget2(),
                            if (currentImageIndex == 2) CardWidget3(),
                          ],
                        ),
                      ),
                    ),
                    feedback: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Card(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset(
                          cardImages[currentImageIndex],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    ),
                    childWhenDragging: Container(),
                    onDragEnd: (DraggableDetails details) {
                      if (details.offset.dx < 0 || details.offset.dy > 0) {
                        // Swiped to the left or bottom
                        if (currentImageIndex < cardImages.length - 1) {
                          setState(() {
                            currentImageIndex++;
                          });
                        } else {
                          setState(() {
                            showNoCards = true;
                          });
                        }
                      }
                    },
                  ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Icon(
                Icons.expand_more, // Using the ⌄ symbol instead of the downward arrow
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DatingApp(),
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.black,
    ),
  ));
}
