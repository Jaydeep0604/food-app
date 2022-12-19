import 'dart:math';

import 'package:flutter/material.dart';
import 'package:foodapp/models/nearestresmodel.dart';
import 'package:foodapp/palette.dart';
import 'package:foodapp/ui/nearrestlistscreen.dart';
import 'package:foodapp/widgets/nearestreswidgetsqare.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool byall = true;
  bool bypizza = true;
  bool bydrink = true;
  bool byrise = true;
  String selected = "all";
  List<Nearestresmodel> nearreslist = [
    Nearestresmodel(
        "0",
        "assets/westway.png",
        "Westway",
        'assets/ratingstar.png',
        "4.6  •",
        "assets/time.png",
        "25 min",
        "50% OFF",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        ""),
    Nearestresmodel(
        "1",
        "assets/fortune.png",
        "Fortune",
        'assets/ratingstar.png',
        "4.4  •",
        "assets/time.png",
        "15 min",
        "50% OFF",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        ""),
    Nearestresmodel(
        "2",
        "assets/westway.png",
        "Westway",
        'assets/ratingstar.png',
        "4.0  •",
        "assets/time.png",
        "27 min",
        "30% OFF",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        ""),
    Nearestresmodel(
        "3",
        "assets/fortune.png",
        "Fortune",
        'assets/ratingstar.png',
        "4.7  •",
        "assets/time.png",
        "14 min",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        ""),
    Nearestresmodel(
        "4",
        "assets/westway.png",
        "Westway",
        'assets/ratingstar.png',
        "4.8  •",
        "assets/time.png",
        "9 min",
        "30% OFF",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        ""),
    Nearestresmodel(
        "4",
        "assets/westway.png",
        "Westway",
        'assets/ratingstar.png',
        "4.8  •",
        "assets/time.png",
        "9 min",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        ""),
    Nearestresmodel(
        "4",
        "assets/westway.png",
        "Westway",
        'assets/ratingstar.png',
        "4.8  •",
        "assets/time.png",
        "9 min",
        "50% OFF",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        ""),
  ];
  List<Nearestresmodel> popureslist = [
    Nearestresmodel(
        "0",
        "assets/moonland.png",
        "Moonland",
        'assets/ratingstar.png',
        "4.8  •",
        "assets/time.png",
        "25 min",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        ""),
    Nearestresmodel(
        "1",
        "assets/starfish.png",
        "Starfish",
        'assets/ratingstar.png',
        "4.0  •",
        "assets/time.png",
        "20 min",
        "50% OFF",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        ""),
    Nearestresmodel(
        "2",
        "assets/moonland.png",
        "Moonland",
        'assets/ratingstar.png',
        "4.4  •",
        "assets/time.png",
        "37 min",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        ""),
    Nearestresmodel(
        "3",
        "assets/starfish.png",
        "Starfish",
        'assets/ratingstar.png',
        "4.0  •",
        "assets/time.png",
        "20 min",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        ""),
    Nearestresmodel(
        "4",
        "assets/moonland.png",
        "Moonland",
        'assets/ratingstar.png',
        "4.3  •",
        "assets/time.png",
        "7 min",
        "50% OFF",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        ""),
  ];
 
  bool home = true;
  bool search = false;
  bool cart = false;
  bool profile = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new Container(
        color: Colors.blue,
        height: 70,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      home = true;
                      search = false;
                      cart = false;
                      profile = false;
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:
                              home ? Palette.primaryColor : Palette.whiteColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 17),
                        child: Image.asset(
                          'assets/Group 43.png',
                          height: 25,
                          width: 22.5,
                          color: home ? Palette.whiteColor : Palette.blackColor,
                        ),
                      ),
                    ],
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      home = false;
                      search = true;
                      cart = false;
                      profile = false;
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: search
                              ? Palette.primaryColor
                              : Palette.whiteColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 17),
                        child: Image.asset(
                          'assets/Group 23.png',
                          height: 25,
                          width: 25,
                          color:
                              search ? Palette.whiteColor : Palette.blackColor,
                        ),
                      ),
                    ],
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      home = false;
                      search = false;
                      cart = true;
                      profile = false;
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:
                              cart ? Palette.primaryColor : Palette.whiteColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 17),
                        child: Image.asset(
                          'assets/Group 44.png',
                          height: 25,
                          width: 22.5,
                          color: cart ? Palette.whiteColor : Palette.blackColor,
                        ),
                      ),
                    ],
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      home = false;
                      search = false;
                      cart = false;
                      profile = true;
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: profile
                              ? Palette.primaryColor
                              : Palette.whiteColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 17),
                        child: Image.asset(
                          'assets/Group 45.png',
                          height: 25,
                          width: 20.83,
                          color:
                              profile ? Palette.whiteColor : Palette.blackColor,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
      backgroundColor: Palette.background,
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/Group 118.png"),
              if (home||search)
                Container(
                  padding: EdgeInsets.only(top: 80, left: 25, right: 25),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Find Your Location',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          'assets/ic_search.png',
                        ),
                      ),
                    ),
                  ),
                ),
              if (home)
                Container(
                  padding: EdgeInsets.only(top: 170),
                  child: Row(
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Image.asset(
                            "assets/location.png",
                            height: 25,
                            width: 25,
                          )),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Stack(
                          children: [
                            Container(
                                padding: EdgeInsets.only(left: 0),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Home",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)))),
                            Container(
                                padding: EdgeInsets.only(left: 0, top: 20),
                                child: Text("242 ST Marks Eva, Finland")),
                          ],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 60),
                          child: Image.asset("assets/ion_options-outline.png")),
                    ],
                  ),
                )
            ],
          ),
          if (home)
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(1),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = 'first';
                                  });
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 65,
                                      height: 65,
                                      decoration: BoxDecoration(
                                          color: selected == 'first'
                                              ? Palette.linkColor
                                              : Palette.whiteColor,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15, left: 17),
                                      child: Image.asset(
                                        'assets/ion_fast-food-outline.png',
                                        height: 30,
                                        width: 30,
                                        color: selected == 'first'
                                            ? Palette.whiteColor
                                            : Palette.blackColor,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'All',
                                  style: TextStyle(fontSize: 14),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = 'second';
                                  });
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 65,
                                      height: 65,
                                      decoration: BoxDecoration(
                                          color: selected == 'second'
                                              ? Palette.linkColor
                                              : Palette.whiteColor,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15, left: 17),
                                      child: Image.asset(
                                        'assets/ion_pizza-outline.png',
                                        height: 30,
                                        width: 30,
                                        color: selected == 'second'
                                            ? Palette.whiteColor
                                            : Palette.blackColor,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Pizza',
                                  style: TextStyle(fontSize: 14),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = 'third';
                                  });
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 65,
                                      height: 65,
                                      decoration: BoxDecoration(
                                          color: selected == 'third'
                                              ? Palette.linkColor
                                              : Palette.whiteColor,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15, left: 17),
                                      child: Image.asset(
                                        'assets/bx_bx-drink.png',
                                        height: 30,
                                        width: 30,
                                        color: selected == 'third'
                                            ? Palette.whiteColor
                                            : Palette.blackColor,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Beverages',
                                  style: TextStyle(fontSize: 14),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = 'fourth';
                                  });
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 65,
                                      height: 65,
                                      decoration: BoxDecoration(
                                          color: selected == 'fourth'
                                              ? Palette.linkColor
                                              : Palette.whiteColor,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15, left: 17),
                                      child: Image.asset(
                                        'assets/fe_rice-cracker.png',
                                        height: 30,
                                        width: 30,
                                        color: selected == 'fourth'
                                            ? Palette.whiteColor
                                            : Palette.blackColor,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Asian',
                                  style: TextStyle(fontSize: 14),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      
                      // Row(
                      //   children: [
                      //     SizedBox(
                      //       width: 27,
                      //     ),
                      //     GestureDetector(
                      //       onTap: () {
                      //         setState(() {
                      //           selected = 'all';
                      //           byall = true;
                      //           bydrink = false;
                      //           byrise = false;
                      //           bypizza = false;
                      //         });
                      //         //  Navigator.push(
                      //         //               context,
                      //         //               MaterialPageRoute(
                      //         //                   builder: (context) =>
                      //         //                       HomeScreen()),
                      //         //             );
                      //       },
                      //       child: Container(
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(10),
                      //           color: selected == "all"
                      //               ? Palette.linkColor
                      //               : Palette.whiteColor,
                      //         ),
                      //         height: 65,
                      //         width: 65,
                      //         child: Image.asset(
                      //           "assets/ion_fast-food-outline.png",
                      //         ),
                      //         // color: selected=="all"
                      //         //   ? Palette.whiteColor
                      //         //   : Palette.blackColor,
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       width: 15,
                      //     ),
                      //     GestureDetector(
                      //       onTap: () {
                      //         setState(() {
                      //           selected = 'pizza';
                      //           byall = false;
                      //           bydrink = false;
                      //           byrise = false;
                      //           bypizza = true;
                      //         });
                      //         //  Navigator.push(
                      //         //               context,
                      //         //               MaterialPageRoute(
                      //         //                   builder: (context) =>
                      //         //                       HomeScreen()),
                      //         //             );
                      //       },
                      //       child: Container(
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(10),
                      //           color: selected == "pizza"
                      //               ? Palette.linkColor
                      //               : Palette.whiteColor,
                      //         ),
                      //         height: 65,
                      //         width: 65,
                      //         child:
                      //             Image.asset("assets/ion_pizza-outline.png"),
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       width: 15,
                      //     ),
                      //     GestureDetector(
                      //       onTap: () {
                      //         setState(() {
                      //           selected = 'drink';
                      //           byall = false;
                      //           bydrink = true;
                      //           byrise = false;
                      //           bypizza = false;
                      //         });
                      //         //  Navigator.push(
                      //         //               context,
                      //         //               MaterialPageRoute(
                      //         //                   builder: (context) =>
                      //         //                       HomeScreen()),
                      //         //             );
                      //       },
                      //       child: Container(
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(10),
                      //           color: selected == "drink"
                      //               ? Palette.linkColor
                      //               : Palette.whiteColor,
                      //         ),
                      //         height: 65,
                      //         width: 65,
                      //         child: Image.asset("assets/bx_bx-drink.png"),
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       width: 15,
                      //     ),
                      //     GestureDetector(
                      //       onTap: () {
                      //         setState(() {
                      //           selected = 'rise';
                      //           byall = false;
                      //           bydrink = false;
                      //           byrise = true;
                      //           bypizza = false;
                      //         });
                      //         //  Navigator.push(
                      //         //               context,
                      //         //               MaterialPageRoute(
                      //         //                   builder: (context) =>
                      //         //                       HomeScreen()),
                      //         //             );
                      //       },
                      //       child: Container(
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(10),
                      //           color: selected == "rise"
                      //               ? Palette.linkColor
                      //               : Palette.whiteColor,
                      //         ),
                      //         height: 65,
                      //         width: 65,
                      //         child: Image.asset("assets/fe_rice-cracker.png"),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20, right: 130),
                      child: Text(
                        "Nearest Restaurents",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 180,
                      width: 320,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: nearreslist.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                if (index == 0)
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const NearRestListScreen()),
                                  );
                              },
                              child: Stack(
                                children: [
                                  NearestRestaurentswidget(
                                      Nearres: nearreslist[index]),

                                  //  if ((index + 0) % 2 == 0)
                                  //     Stack(
                                  //       children: [
                                  //         Container(
                                  //           margin:
                                  //               EdgeInsets.only(top: 92),
                                  //           height: 28,
                                  //           width: 79,
                                  //           decoration: BoxDecoration(
                                  //               borderRadius:
                                  //                   BorderRadius.circular(
                                  //                       10),
                                  //               color: Palette.linkColor
                                  //               ),
                                  //           // child: Align(
                                  //           //     alignment: Alignment.center,
                                  //           //     child: Text(
                                  //           //       '50% OFF',
                                  //           //       style: TextStyle(
                                  //           //           fontSize: 13,
                                  //           //           fontWeight:
                                  //           //               FontWeight.bold,
                                  //           //           color: Palette
                                  //           //               .whiteColor),
                                  //           //     )),
                                  //         )
                                  //       ],
                                  //     )
                                ],
                              ));
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 0,
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20, right: 130),
                      child: Text(
                        "Popular Restaurents",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 180,
                      width: 320,
                      child: ListView.separated(
                        // physics: AlwaysScrollableScrollPhysics(
                        // ),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: popureslist.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //                         context,
                                //                         MaterialPageRoute(
                                //                             builder: (context) =>
                                //                                 TopPiksScreen()),
                                //                       );
                              },
                              child: NearestRestaurentswidget(
                                  Nearres: popureslist[index]));
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 3,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ))
        ],
      )),
    );
  }
}
