import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'SignUpScreen.dart';

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
      home: MyHomePage(),
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
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height*0.7,
            decoration: BoxDecoration(
              color: Colors.white12,
              image: DecorationImage(
                  image: AssetImage("assets/Scene-Whiteboard.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/circle.png"),
              SizedBox(height: 10),
              Text("Where hackers meet hobbyists"),
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return LoginScreen();
                    }));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    //side: BorderSide(color: Colors.red),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 13),
                    child: Text(
                      'Login'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  color: Color.fromRGBO(49, 70, 240, 100),
                ),
              ),
              SizedBox(height: 10),
              FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return Signupscreen();
                  }));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  side: BorderSide(
                    color: Color.fromRGBO(49, 70, 240, 100),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 54, vertical: 13),
                  child: Text(
                    'Signup'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(49, 70, 240, 100),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Text("Made with ❤ by Hack For Valley Team".toUpperCase())
            ],
          ),
        ],
      ),
    );
  }
}
