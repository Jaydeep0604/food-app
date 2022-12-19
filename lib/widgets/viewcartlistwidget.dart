import 'package:flutter/material.dart';
import 'package:foodapp/models/nearestresmodel.dart';
import 'package:foodapp/palette.dart';

class CartListWidget extends StatelessWidget {
  CartListWidget({Key? key, required this.user2}) : super(key: key);

  Nearestresmodel user2;

  @override
  Widget build(BuildContext context) {
   
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
                child: Container(margin: EdgeInsets.all(10),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(user2.cimageurl), fit: BoxFit.fill)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 100),
                child: Text(
                  "${user2.cdescription}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 15, left: 280),
                child: Image.asset(
                  "${user2.cdeleteimage}",
                  height: 24,
                  width: 24,
                ),
              ),
              Container(margin: EdgeInsets.only(left: 100,top: 40),
                        width: 88,
                        height: 32,
                        decoration: BoxDecoration(
                            color: Palette.background,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Padding(
                padding: const EdgeInsets.only(top: 0, left: 5),
                child: Image.asset(
                  "${user2.cremoveimage}",
                  height: 24,
                  width: 24,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 13),
                child: Text('1',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 15),
                child: Image.asset(
                  "${user2.caddimage}",
                  height: 24,
                  width: 24,
                ),
              ),
                          ],
                        ),
                      ),
                      Padding(
                padding: const EdgeInsets.only(top: 55, left: 250),
                child: Text(
                  "${user2.cprice}",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,),
                ),
              ),
              
             
            ],
          ),
        ),
      ),
    );
  }
}