import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:calender_grid_dashboard/CalenderGridDashBoard.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:Column(
        children: <Widget>[
          SizedBox(
           height: 110,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Calender Diary",style: GoogleFonts.openSans(
                      textStyle:TextStyle(
                        color: Colors.pink[300],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )
                    ),),
                    SizedBox(
                      height: 4,
                    ),
                    Text("Home",style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )
                    ),)
                  ],
                ),
                IconButton(
                  alignment: Alignment.topCenter,
                    icon: SvgPicture.asset("assets/notification.svg",
                    height: 25.0,),
                    onPressed: (){

                    }),
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          CalenderGridDashBoard(),
        ],
      )
    );
  }
}
