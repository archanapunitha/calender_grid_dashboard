import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

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
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
