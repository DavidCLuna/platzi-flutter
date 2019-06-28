import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'gradient_back.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter David',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Color.fromRGBO(52, 84, 185, 1),
      ),
      home: Scaffold(
        /*appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text("Share"),
        ),*/
        body:
            //DescriptionPlace("Bahamas", 4, "Lorem ipsum dolor sit amet consectetur adipiscing elit auctor est sollicitudin, aenean sem posuere senectus euismod rhoncus feugiat parturient. Nullam hac arcu tristique commodo sociis sodales, netus vivamus pharetra varius ."),
            Stack(
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    DescriptionPlace("Bahamas", 4, "Lorem ipsum dolor sit amet consectetur adipiscing elit auctor est sollicitudin, aenean sem posuere senectus euismod rhoncus feugiat parturient. Nullam hac arcu tristique commodo sociis sodales, netus vivamus pharetra varius ."),
                    ReviewList()
                  ],
                ),
                GradientBack()
                
              ],
            )
      )
    );

  }
}