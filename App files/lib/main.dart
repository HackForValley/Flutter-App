import 'package:flutter/material.dart';

import 'Auth/Login.dart';
import 'Auth/Signup.dart';
//import 'package:dotted_border/dotted_border.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
 final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
           // width: MediaQuery.of(context).size.width,
           // height: MediaQuery.of(context).size.height*0.7,
          decoration: BoxDecoration(
            color: Colors.white12,
            image: DecorationImage(image:AssetImage("assets/Scene-Whiteboard.png"),fit: BoxFit.cover),
          ),
          ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 Container( 
                 child:Image.asset("assets/circle.png"),
                ),
                Padding(padding: EdgeInsets.only(top:10)),
                Container(
                  child: Text("Where hackers meet hobbyists"),
                ),
                 Padding(                 
                padding: EdgeInsets.only(top: 100),
                child:GestureDetector(
                   onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return LoginScreen();
                    }));
                    },
                  child:Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width/1.8,
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      )
                    ),
                    child: Center(
                      child: Text('Login'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ),
                  ),
                ),
                 
                
                  Padding(                 
                padding: EdgeInsets.only(top: 10),
                child:GestureDetector(
                   onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return Signupscreen();
                    }));
                    },
                child:Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width/1.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      ),
                       border: Border.all(
                      color: Colors.indigo,
                      width: 2,
                    )
                    ),
                    child: Center(
                      child: Text('Signup'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.indigoAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    
                  ), 
                ),
                ), 
              ],
            ),
         
        ],
      )
    );
  }
}