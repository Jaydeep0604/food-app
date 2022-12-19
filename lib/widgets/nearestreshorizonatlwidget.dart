import 'package:flutter/material.dart';
import 'package:foodapp/models/nearestresmodel.dart';
import 'package:foodapp/palette.dart';
import 'package:foodapp/ui/homescreen.dart';
import 'package:foodapp/ui/viewcartscreen.dart';

class NearestResHorizonatlWidget extends StatelessWidget {
  NearestResHorizonatlWidget({Key? key, required this.Nearreshorizontal}) : super(key: key);

  Nearestresmodel Nearreshorizontal;

  @override
  Widget build(BuildContext context) {
    void _showDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(20.0)), //this right here
          child: Container(
            height: 307,width: 250,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top: 20),
          child: Center(child: Image.asset("assets/shopping-cart .png",height: 100,width: 100,))),
          Padding(
            padding: const EdgeInsets.only(top:20),
            child: Center(child: Text("Sucessfully\nadded to cart",style: TextStyle(fontSize: 20,color: Palette.greenColor),textAlign:TextAlign.center,)),
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
                          child: Text('Check out now',style: TextStyle(color: Palette.blackColor,fontSize: 17,fontWeight: FontWeight.bold),),
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

    return InteractiveViewer(
      child: Padding(
        padding: EdgeInsets.symmetric(),
        child: Card(
          color: Palette.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Container(
                  width: 130,
                  height: 115,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(Nearreshorizontal.himageurl), fit: BoxFit.fill)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 135),
                child: Text(
                  "${Nearreshorizontal.hdescription}",
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 135),
                child: Text(
                  "${Nearreshorizontal.hplace}",
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Palette.textColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 75, left: 135),
                child: Text(
                  "${Nearreshorizontal.hprice}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 280),
                child: GestureDetector(
                  onTap: () {
                    _showDialog(context);
                  },
                  child: Image.asset(
                    "${Nearreshorizontal.hplus}",
                    height: 24,
                    width: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}