import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {

  myAchieve(num,Type){
    return Row(
                    children: [Text(num,
                    style: TextStyle(
                      fontSize:30,fontWeight: FontWeight.bold ),),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(Type),
                      )
                      ],
                  );
  }

  mySpac(icon,tech){
    return Container(
                        width: 105,
                        height: 115,
                        child: Card(
                          margin: EdgeInsets.all(0),
                          color: Color(0xff252525),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(icon,
                                color: Colors.white,),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(tech ,
                                style: TextStyle(
                                  color: Colors.white , fontSize: 16
                                ),),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,
    extendBodyBehindAppBar: true,
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),
    body: SlidingSheet(
      elevation: 8,
      cornerRadius: 50,
      snapSpec: const SnapSpec(
        // Enable snapping. This is true by default.
        snap: true,
        // Set custom snapping points.
        snappings: [0.38, 0.7, 1.0],
        // Define to what the snappings relate to. In this case, 
        // the total available space that the sheet can expand to.
        positioning: SnapPositioning.relativeToAvailableSpace,
      ),
      // The body widget will be displayed under the SlidingSheet
      // and a parallax effect can be applied to it.
      body: Center(
        child: Text(
          'This widget is below the SlidingSheet',
          style: TextStyle(
            color: Colors.white,
          ),
      ),
      ),
      builder: (context, state) {
        // This is the content of the sheet that will get
        // scrolled, if the content is bigger than the available
        // height of the sheet.
        return Container(
          margin: EdgeInsets.only(left: 20,right: 20,top: 30),
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myAchieve('78', 'projects'),
                  myAchieve('65', 'clients'),
                  myAchieve('92', 'message'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text('Spacialized in' , style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold
              ),),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpac(Icons.android,'Android'),
                      mySpac(Icons.label,'Amazon'),
                      mySpac(Icons.qr_code,'Android'),
                      ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpac(Icons.e_mobiledata,'Android'),
                      mySpac(Icons.umbrella,'Amazon'),
                      mySpac(Icons.icecream_outlined,'Android'),
                      ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpac(Icons.aspect_ratio_rounded,'Android'),
                      mySpac(Icons.iron,'Amazon'),
                      mySpac(Icons.ios_share_rounded,'Android'),
                      ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              )
            ],)
        );
      },
    ),
  );  
  }
}