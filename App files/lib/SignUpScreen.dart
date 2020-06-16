import 'package:flutter/material.dart';
import 'LoginScreen.dart';

class Signupscreen extends StatefulWidget {
  Signupscreen({Key key}) : super(key: key);

  @override
  _SignupscreenState createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset("assets/Scene-Whiteboard.png"),
          ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset("assets/circle.png"),
              ),
              //Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  "Let's Get Started",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 15),
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
                        Icons.format_color_text,
                        // color: Colors.white,
                      ),
                      hintText: 'Name',
                    ),
                    textInputAction: TextInputAction.next,
                    onSubmitted: (value) => FocusScope.of(context).nextFocus(),
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
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.email,
                        // color: Colors.white,
                      ),
                      hintText: 'Email Address',
                    ),
                    textInputAction: TextInputAction.next,
                    onSubmitted: (value) => FocusScope.of(context).nextFocus(),
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
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.lock,
                        // color: Colors.white,
                      ),
                      hintText: 'Password',
                    ),
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                    onSubmitted: (value) => FocusScope.of(context).nextFocus(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                color: Color.fromRGBO(255, 255, 255, 100),
                elevation: 0,
                margin: EdgeInsets.symmetric(horizontal: 65),
                child: FlatButton(
                  onPressed: () {
                    //TODO: Add a way to Sign Uo
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    //side: BorderSide(color: Colors.red),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 13),
                    child: Text(
                      'Sign up'.toUpperCase(),
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
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Container(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return LoginScreen();
                      }));
                    },
                    child: Center(
                      child: Text(
                        "Already have an account? Log in.",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.indigoAccent,
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
      ),
    );
  }
}
