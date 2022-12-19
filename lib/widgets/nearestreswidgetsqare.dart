import 'package:flutter/material.dart';
import 'package:foodapp/models/nearestresmodel.dart';
import 'package:foodapp/palette.dart';

class NearestRestaurentswidget extends StatelessWidget {
  NearestRestaurentswidget({Key? key, required this.Nearres}) : super(key: key);
  Nearestresmodel Nearres;
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      height: 180,
      width: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(Nearres.imageurl), fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130, right: 70),
            child: Container(
              height: 50,
              width: 140,
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "${Nearres.description}",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160, left: 0),
            child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Nearres.ratingimage), fit: BoxFit.fill
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
                "${Nearres.rating}",
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
                    image: AssetImage(Nearres.timeimage), fit: BoxFit.fill
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
                "${Nearres.time}",
                style:
                    TextStyle(color: Palette.textColor, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          if(Nearres.discount != "")
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 92, left: 0),
              child: Container(
                decoration: BoxDecoration(color: Palette.linkColor,borderRadius: BorderRadius.circular(10)),
                width: 79,
                height: 28,
                child: Align(alignment: Alignment.center,
                  child: Text(
                    "${Nearres.discount}",
                    style:
                        TextStyle(color: Palette.whiteColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
