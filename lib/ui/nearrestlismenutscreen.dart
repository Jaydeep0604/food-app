import 'package:flutter/material.dart';
import 'package:foodapp/models/nearestresmodel.dart';
import 'package:foodapp/palette.dart';
import 'package:foodapp/ui/nearrestlistscreen.dart';
import 'package:foodapp/ui/viewcartscreen.dart';
import 'package:foodapp/widgets/nearestreshorizonatlwidget.dart';

class NearrestLisMenutScreen extends StatefulWidget {
  const NearrestLisMenutScreen({ Key? key }) : super(key: key);

  @override
  State<NearrestLisMenutScreen> createState() => _NearrestLisMenutScreenState();
}

class _NearrestLisMenutScreenState extends State<NearrestLisMenutScreen> {
  bool byall = true;
  bool bypizza = true;
  bool bydrink = true;
  bool byrise = true;
  String selected = "all";
  List<Nearestresmodel> bestsellerlist = [
    Nearestresmodel("0", "assets/moonland.png", "Moonland",'assets/ratingstar.png', "4.8  •", "assets/time.png", "25 min","",
    "assets/westway.png","Vegitable Saladia","In Pizza Mania","Price. 152.00","assets/plus-square.png",
    "","","","","","",""),
    Nearestresmodel("1", "assets/starfish.png", "Starfish",'assets/ratingstar.png', "4.0  •", "assets/time.png", "20 min","",
    "assets/burger.png","Burger with some","In Pizza Mania","Price. 152.00","assets/plus-square.png",
    "","","","","","",""),
    Nearestresmodel("0", "assets/moonland.png", "Moonland",'assets/ratingstar.png', "4.8  •", "assets/time.png", "25 min","",
    "assets/westway.png","Vegitable Saladia","In Pizza Mania","Price. 152.00","assets/plus-square.png",
    "","","","","","",""),
    Nearestresmodel("1", "assets/starfish.png", "Starfish",'assets/ratingstar.png', "4.0  •", "assets/time.png", "20 min","",
    "assets/burger.png","Burger with some","In Pizza Mania","Price. 152.00","assets/plus-square.png",
    "","","","","","",""),
    Nearestresmodel("0", "assets/moonland.png", "Moonland",'assets/ratingstar.png', "4.8  •", "assets/time.png", "25 min","",
    "assets/westway.png","Vegitable Saladia","In Pizza Mania","Price. 152.00","assets/plus-square.png",
    "","","","","","",""),
    Nearestresmodel("1", "assets/starfish.png", "Starfish",'assets/ratingstar.png', "4.0  •", "assets/time.png", "20 min","",
    "assets/burger.png","Burger with some","In Pizza Mania","Price. 152.00","assets/plus-square.png","","","","","","",""),
    Nearestresmodel("0", "assets/moonland.png", "Moonland",'assets/ratingstar.png', "4.8  •", "assets/time.png", "25 min","",
    "assets/westway.png","Vegitable Saladia","In Pizza Mania","Price. 152.00","assets/plus-square.png","","","","","","",""),
    Nearestresmodel("1", "assets/starfish.png", "Starfish",'assets/ratingstar.png', "4.0  •", "assets/time.png", "20 min","",
    "assets/burger.png","Burger with some","In Pizza Mania","Price. 152.00","assets/plus-square.png","","","","","","",""),
    Nearestresmodel("0", "assets/moonland.png", "Moonland",'assets/ratingstar.png', "4.8  •", "assets/time.png", "25 min","",
    "assets/westway.png","Vegitable Saladia","In Pizza Mania","Price. 152.00","assets/plus-square.png","","","","","","",""),
    Nearestresmodel("1", "assets/starfish.png", "Starfish",'assets/ratingstar.png', "4.0  •", "assets/time.png", "20 min","",
    "assets/burger.png","Burger with some","In Pizza Mania","Price. 152.00","assets/plus-square.png","","","","","","",""),
    Nearestresmodel("0", "assets/moonland.png", "Moonland",'assets/ratingstar.png', "4.8  •", "assets/time.png", "25 min","",
    "assets/westway.png","Vegitable Saladia","In Pizza Mania","Price. 152.00","assets/plus-square.png","","","","","","",""),
    Nearestresmodel("1", "assets/starfish.png", "Starfish",'assets/ratingstar.png', "4.0  •", "assets/time.png", "20 min","",
    "assets/burger.png","Burger with some","In Pizza Mania","Price. 152.00","assets/plus-square.png","","","","","","",""),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Row(
            children: [
              GestureDetector(
                onTap: () {
                             Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NearRestListScreen()),
                                );
                            },
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 30),
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
              Column(
                children: [
                  Container(
                margin: EdgeInsets.only(top: 15, left: 70),
                
                child: Text('Westway',style: TextStyle(fontSize: 15,color: Palette.textColor),),
              ),
               Container(
                margin: EdgeInsets.only(top: 0, left: 70),
                
                child: Text('Menu',style: TextStyle(fontSize: 20),),
              ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 70),
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
                Expanded(
                  child: Container(
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
                      
                ),
                Stack(
                     children: [
                       Container(height: 65, width: 500, color: Palette.containor),
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 30, top: 5),
                             child: Text(
                               '3',
                               style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold,
                                   color: Palette.whiteColor),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 15, top: 5),
                             child: Text(
                               'Item',
                               style: TextStyle(
                                   fontSize: 14, color: Palette.textColor),
                             ),
                           ),
                           GestureDetector(
                             onTap: () {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => const ViewCart()),
                               );
                             },
                             child: Padding(
                               padding: const EdgeInsets.only(left: 50, top: 5),
                               child: Text(
                                 'View Cart',
                                 style: TextStyle(
                                     fontSize: 16,
                                     fontWeight: FontWeight.bold,
                                     color: Palette.whiteColor),
                               ),
                             ),
                           ),
                           Stack(
                             children: [
                               Container(
                                 margin: EdgeInsets.only(left: 45, top: 8),
                                 height: 50,
                                 width: 80,
                                 decoration: BoxDecoration(
                                     color: Palette.containorbg,
                                     borderRadius: BorderRadius.circular(10)),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 60, top: 23),
                                 child: Text(
                                   '\$20.49',
                                   style: TextStyle(
                                       fontSize: 16,
                                       fontWeight: FontWeight.bold,
                                       color: Palette.whiteColor),
                                 ),
                               ),
                             ],
                           )
                         ],
                       )
                     ],
                   )
            ],
          ),
        )
      ),
    );
  }
}