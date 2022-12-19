

import 'package:flutter/material.dart';
import 'package:foodapp/ui/loginpage.dart';
import 'package:foodapp/palette.dart';
import 'package:foodapp/splashmodel.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  bool byskip = true;
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      child: Scaffold(
        backgroundColor: Palette.background,
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (BuildContext, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 90),
                          child: Image.asset(
                            contents[i].image,
                            height: 150,
                          ),
                        ),
                        Text(
                          contents[i].title,
                          style: TextStyle(height: 5,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          contents[i].discription,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              contents.length,
                              (index) => buildDot(index, context),
                            ),
                          ),
                        ),
            Stack(
              children: [
                Container(
                  //margin: EdgeInsets.only(top: 182),
                  child: Image.asset(
                    "assets/Vector 3.png",
                    height: 206,
                    width: 360,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 110, left: 170),
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      child: GestureDetector(
                          onTap: () {
                            if (currentIndex == contents.length - 1) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => LoginPage(),
                                ),
                              );
                            }
                            _controller.nextPage(
                              duration: Duration(milliseconds: 100),
                              curve: Curves.bounceIn,
                            );
                          },
                          child: Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 110, left: 10),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                              );
                            },
                            child: Text(
                            currentIndex == contents.length - 1
                             ? "Done" 
                             : "Skip",
                              style: TextStyle(fontSize: 16),
                            ))),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: 10,
     
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), 
          color: currentIndex ==index? Colors.yellow:Colors.grey,
          
          ),
    );
  }
}