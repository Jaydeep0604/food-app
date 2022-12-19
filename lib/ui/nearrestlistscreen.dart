import 'package:flutter/material.dart';
import 'package:foodapp/models/nearestresmodel.dart';
import 'package:foodapp/palette.dart';
import 'package:foodapp/ui/homescreen.dart';
import 'package:foodapp/ui/nearrestlismenutscreen.dart';
import 'package:foodapp/widgets/nearestreshorizonatlwidget.dart';
import 'package:foodapp/widgets/nearestreswidgetsqare.dart';

class NearRestListScreen extends StatefulWidget {
  const NearRestListScreen({ Key? key }) : super(key: key);

  @override
  State<NearRestListScreen> createState() => _NearRestListScreenState();
}

class _NearRestListScreenState extends State<NearRestListScreen> {
  List<Nearestresmodel> bestsellerlist = [
    Nearestresmodel("0", "assets/moonland.png", "Moonland",
        'assets/ratingstar.png', "4.8  •", "assets/time.png", "25 min","",
        "assets/westway.png","Vegitable Saladia","In Pizza Mania","Price. 152.00","assets/plus-square.png","","","","","","",""),
    Nearestresmodel("1", "assets/starfish.png", "Starfish",
        'assets/ratingstar.png', "4.0  •", "assets/time.png", "20 min","",
        "assets/burger.png","Burger with some","In Pizza Mania","Price. 152.00","assets/plus-square.png","","","","","","","")
  ];
  bool byall = true;
  bool bypizza = true;
  bool bydrink = true;
  bool byrise = true;
  String selected = "all";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Container(
                  child: Image.asset("assets/Vector3.png"),
                    ),
                    Row(
                children: [
                  GestureDetector(
                    onTap: () {
                             Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()),
                                );
                            },
                    child: Container(
                      margin: EdgeInsets.only(top: 57, left: 30),
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                          color: Palette.whiteColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 0, left: 0),
                        child: Image.asset(
                          'assets/back.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 57, left: 140),
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                        color: Palette.whiteColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0, left: 0),
                      child: Image.asset(
                        'assets/like.png',
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 57, left: 15),
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                        color: Palette.whiteColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0, left: 0),
                      child: Image.asset(
                        'assets/dounload.png',
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
               child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:299,left: 74),
                    child: Text("Westway",style: TextStyle(fontSize: 25),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:326,left: 265),
                    child: Text("More info",style: TextStyle(fontSize: 15,color: Palette.linkColor),),
                  )
                ],
               ),
              ),
              Container(
                padding: EdgeInsets.only(top: 200 ,left: 30),
                child: Stack(
                  children: [
                    Padding(
              padding: const EdgeInsets.only(top: 160, left: 0),
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/ratingstar.png"), fit: BoxFit.fill
                      )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 157, left: 17),
              child: Container(
                width: 30,
                height: 18,
                child: Text(
                  "4.6  •",
                  style:
                      TextStyle(color: Palette.blackColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 160, left:55),
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/time.png"), fit: BoxFit.fill
                      )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 157, left: 70),
              child: Container(
                width: 45,
                height: 18,
                child: Text(
                  "25 min",
                  style:
                      TextStyle(color: Palette.textColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  ],
                ),
              ),
        
                  ],
                ),
              ),  
               Container(
                height: 100,
                width: 300,
                padding: EdgeInsets.only(top: 10,left: 34),
                child: Text("Healthy eating means eating a variety\nof foods that give you\nthe nutrients you need to maintain your health, feel good,\nand have energy.",style: TextStyle(color: Palette.textColor),),
              ),
              Container(padding: EdgeInsets.only(right: 100),
                child: Text("Westway Food Menu",style: TextStyle(fontSize: 20),),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30.0),
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                     Container(
                      child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = 'all';
                                byall = true;
                                bydrink = false;
                                byrise = false;
                                bypizza = false;
                              });
                              //  Navigator.push(
                              //               context,
                              //               MaterialPageRoute(
                              //                   builder: (context) =>
                              //                       HomeScreen()),
                              //             );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: selected == "all"
                                    ? Palette.linkColor
                                    : Palette.whiteColor,
                              ),
                              height: 35,
                              width: 104,
                              child: Align(alignment: Alignment.center, child: Text("Best Seller")),
                             
                              // color: selected=="all"
                              //   ? Palette.whiteColor
                              //   : Palette.blackColor,
                            ),
                          ),
                  ),
                 SizedBox(
                          width: 15,
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = 'pizza';
                                byall = false;
                                bydrink = false;
                                byrise = false;
                                bypizza = true;
                              });
                              //  Navigator.push(
                              //               context,
                              //               MaterialPageRoute(
                              //                   builder: (context) =>
                              //                       HomeScreen()),
                              //             );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: selected == "pizza"
                                    ? Palette.linkColor
                                    : Palette.whiteColor,
                              ),
                              height: 35,
                              width: 62,
                              child: Align(alignment: Alignment.center, child: Text("Veg")),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = 'drink';
                                byall = false;
                                bydrink = true;
                                byrise = false;
                                bypizza = false;
                              });
                              //  Navigator.push(
                              //               context,
                              //               MaterialPageRoute(
                              //                   builder: (context) =>
                              //                       HomeScreen()),
                              //             );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: selected == "drink"
                                    ? Palette.linkColor
                                    : Palette.whiteColor,
                              ),
                              height: 35,
                              width: 93,
                                child: Align(alignment: Alignment.center, child: Text("Non-Veg")),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = 'rise';
                                byall = false;
                                bydrink = false;
                                byrise = true;
                                bypizza = false;
                              });
                              //  Navigator.push(
                              //               context,
                              //               MaterialPageRoute(
                              //                   builder: (context) =>
                              //                       HomeScreen()),
                              //             );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: selected == "rise"
                                    ? Palette.linkColor
                                    : Palette.whiteColor,
                              ),
                              height: 35,
                              width: 93,
                             child: Align(alignment: Alignment.center, child:Text("Beverages"),
                            ),
                          ),
                        ),
                        )
                  ],
                ),
              ),
               Container(padding: EdgeInsets.only(right: 160),
                child: Text("Best sellers",style: TextStyle(fontSize: 20),),
               ),
               Container(
                    //height: 180,
                    width: 320,
                    child: ListView.separated(
                      // physics: AlwaysScrollableScrollPhysics(
                      // ),
                      shrinkWrap: true,
                      primary: false,
                      scrollDirection: Axis.vertical,
                      itemCount: bestsellerlist.length,
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
                            child: NearestResHorizonatlWidget(
                                Nearreshorizontal: bestsellerlist[index]));
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 3,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(padding: EdgeInsets.only(left: 160),
                  height: 21,
                  //width: 98,
                child: GestureDetector(
                  onTap: () {
                           Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const NearrestLisMenutScreen()),
                              );
                          },
                  child: Text("See our menu",style: TextStyle(fontSize: 15,color: Palette.linkColor),)),
               ),
                SizedBox(height: 20,),
            ],
          ),
        )
      ),
    );
  }
}