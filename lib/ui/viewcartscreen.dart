
import 'package:flutter/material.dart';
import 'package:foodapp/models/nearestresmodel.dart';
import 'package:foodapp/palette.dart';
import 'package:foodapp/ui/nearrestlismenutscreen.dart';
import 'package:foodapp/widgets/viewcartlistwidget.dart';

class ViewCart extends StatefulWidget {
  const ViewCart({Key? key}) : super(key: key);

  @override
  State<ViewCart> createState() => _ViewCartState();
}

class _ViewCartState extends State<ViewCart> {
   void _showDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(20.0)), //this right here
          child: Container(
            height: 361,width: 300,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top: 20),
          child: Center(child: Image.asset("assets/smiling 1.png",height: 100,width: 100,))),
          Padding(
            padding: const EdgeInsets.only(top:20),
            child: Center(child: Text("Thanks for Buying\nFood with Us!",style: TextStyle(fontSize: 20,color: Palette.greenColor),textAlign:TextAlign.center,)),
          ),
           Padding(
            padding: const EdgeInsets.only(top:20),
            child: Center(child: Text("Your food will arrive in 3 min.",style: TextStyle(fontSize: 13,),textAlign:TextAlign.center,)),
          ),
                  GestureDetector(
                     onTap: () {
                             Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ViewCart()),
                                );
                            },
                    child: Stack(
                      children: [
                        Center(
                          child: Container(margin: EdgeInsets.only(top: 37),
                              height: 60,width: 200,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                              color: Palette.primaryColor),
                            ),
                        ),
                        Center(child: Padding(
                          padding: const EdgeInsets.only(top: 57),
                          child: Text('Track your order',style: TextStyle(color: Palette.blackColor,fontSize: 17,fontWeight: FontWeight.bold),),
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
            );
        });
    }
   
  List<Nearestresmodel> cartlist = [
    Nearestresmodel("id", "imageurl", "description", "ratingimage", "rating", "timeimage", "time", "discount", "himageurl", "hdescription", "hplace", "hprice", "hplus",
     "assets/Rectangle 14.png", "Burger with some", "assets/plus-square (1).png", "assets/bytesize_plus.png", "1", "assets/bytesize_plus.png", "152.00"),
     Nearestresmodel("id", "imageurl", "description", "ratingimage", "rating", "timeimage", "time", "discount", "himageurl", "hdescription", "hplace", "hprice", "hplus",
     "assets/Rectangle 14.png", "Burger with some", "assets/plus-square (1).png", "assets/bytesize_plus.png", "1", "assets/bytesize_plus.png", "152.00"),
     Nearestresmodel("id", "imageurl", "description", "ratingimage", "rating", "timeimage", "time", "discount", "himageurl", "hdescription", "hplace", "hprice", "hplus",
     "assets/Rectangle 14.png", "Burger with some", "assets/plus-square (1).png", "assets/bytesize_plus.png", "1", "assets/bytesize_plus.png", "152.00"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
        SingleChildScrollView(
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
                                            const NearrestLisMenutScreen()),
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
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 80),
                    child: Text(
                      'Cart',
                      style: TextStyle(fontSize: 20, color: Palette.blackColor),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    width: 300,
                    height: 111,
                    decoration: BoxDecoration(
                        color: Palette.linkColor,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 60, left: 55)),
                      Image.asset(
                        'assets/location.png',
                        height: 22,
                        width: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Deliver to',
                          style:
                              TextStyle(fontSize: 14, color: Palette.whiteColor),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 83, top: 40),
                        child: Text(
                          '242 ST Marks Eve,\nFinland ',
                          style:
                              TextStyle(fontSize: 15, color: Palette.whiteColor),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 60, left: 90)),
                      Image.asset(
                        'assets/ic_round-arrow-back-ios (1).png',
                        height: 16,
                        width: 16,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 5,),
              Container(
                  
                  width: 320,
                  child: ListView.separated(
                    // physics: AlwaysScrollableScrollPhysics(
                    // ),
                    shrinkWrap: true,
                    primary: false,
                    scrollDirection: Axis.vertical,
                    itemCount: cartlist.length,
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
                          child: CartListWidget(
                              user2: cartlist[index]));
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 3,
                      );
                    },
                  ),
                ),
                Stack(
                children: [
                  Container(margin: EdgeInsets.only(top: 45),
                child: Image.asset('assets/Vector 3 (1).png',fit: BoxFit.fitWidth,height: 340,width: 500,),
              ),
              Container(width: 300,height: 55,
                      margin: EdgeInsets.only(left: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10),
                          filled: true,
                          fillColor: Palette.whiteColor,
                          hintText: 'PROMO CODE',hintStyle: TextStyle(fontSize: 15),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                         
                        ),
                      ),
                    ),
                    Container( margin: EdgeInsets.only(left: 300,top: 15),
                child: Image.asset('assets/bytesize_plus.png',height: 16,width: 16,),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 120,left: 30),
                    child: Text('Item total',style: TextStyle(fontSize: 14),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120,left: 180),
                    child: Text('\$20.49',style: TextStyle(fontSize: 14),),
                  ),
                ],
              ),
              
               Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 150,left: 30),
                    child: Text('Discount',style: TextStyle(fontSize: 14),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150,left: 198),
                    child: Text('-\$10',style: TextStyle(fontSize: 14),),
                  ),
                ],
              ),
              
               Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 180,left: 30),
                    child: Text('Tax',style: TextStyle(fontSize: 14),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 180,left: 240),
                    child: Text('\$2',style: TextStyle(fontSize: 14),),
                  ),
                ],
              ),
              
               Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 210,left: 30),
                    child: Text('Total',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 210,left: 180),
                    child: Text('\$12.49',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              GestureDetector(
                 onTap: () {
                    _showDialog(context);
                  },
                child: Container(
                  margin: EdgeInsets.only(left: 30,top: 270),
                  height: 60,width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  color: Palette.whiteColor),
                  child: Center(child: Text('Continue',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)),
                ),
              )
                ],
              )
            ],
          ),
        ),
      ],
      ), 
    );
  }
}