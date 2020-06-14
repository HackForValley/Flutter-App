import 'package:flutter/material.dart';
//import 'package:flutter_launcher_icons/main.dart';
import 'SignUpScreen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();

    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
  }

  _printLatestValue() {
    print("Second text field: ${myController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Image.asset("assets/Scene-Whiteboard.png"),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/circle.png"),
            SizedBox(height: 10),
            Container(
              child: Text(
                "WELCOME,Back!",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 40),
            Card(
              color: Color.fromRGBO(245, 245, 245, 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
                //side: BorderSide(color: Colors.red),
              ),
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.mail,
                      // color: Colors.white,
                    ),
                    hintText: 'Email Address',
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Color.fromRGBO(245, 245, 245, 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
                //side: BorderSide(color: Colors.red),
              ),
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.lock,
                      // color: Colors.white,
                    ),
                    hintText: 'Password',
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () {
                //TODO: Add a way to login
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
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return Signupscreen();
                    }));
                  },
                  child: Center(
                    child: Text(
                      "or Create an account",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromRGBO(49, 70, 240, 100),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
