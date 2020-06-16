import 'package:flutter/material.dart';

import 'Login.dart';


class Signupscreen extends StatefulWidget {
  Signupscreen({Key key}) : super(key: key);

  @override
  _SignupscreenState createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
          decoration: BoxDecoration(
            color: Colors.white12,
            image: DecorationImage(image:AssetImage("assets/Scene-Whiteboard.png"),fit: BoxFit.cover),
          ),
          ),
            SingleChildScrollView(
                          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   Container( 
                   child:Image.asset("assets/circle.png"),
                  ),
                  Padding(padding: EdgeInsets.only(top:20)),
                  Container(
                    child: Text("Let's Get Started",style:TextStyle(fontSize: 20),),
                  ),
                   Padding(                 
                  padding: EdgeInsets.only(top: 20),
                  child:Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.5,
                      decoration: BoxDecoration(
                         color: Colors.black12,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        )
                      ),
                      child:TextField(
                         decoration: InputDecoration(
                           fillColor: Colors.grey,
                          border: InputBorder.none,
                          icon: Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Icon(Icons.format_color_text,
                              //color: Colors.grey,
                            ),
                          ),
                          hintText: 'Name',
                        ),
                      ),
                    ), 
                  ),
                  Padding(
                  padding: EdgeInsets.only(top:5),
                  child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.5,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        )
                      ),
                      child:TextField(
                         decoration: InputDecoration(
                           fillColor: Colors.grey,
                          border: InputBorder.none,
                          icon: Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Icon(Icons.email,
                         //   color: Colors.white,
                            ),
                          ),
                          hintText: 'Email Address',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                  padding: EdgeInsets.only(top:5),
                  child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.5,
                      decoration: BoxDecoration(
                       color: Colors.black12,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        )
                      ),
                      child:TextField(
                        obscureText: true,
                         decoration: InputDecoration(
                           fillColor: Colors.grey,
                          border: InputBorder.none,
                          icon: Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Icon(Icons.lock,
                              //color: Colors.white,
                            ),
                          ),
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                  
                    Padding(                 
                  padding: EdgeInsets.only(top: 10),
                  child:GestureDetector(
                  child:Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.5,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        ),
                      ),
                      child:Center(
                        child: Text('Signup'.toUpperCase(),
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
                  Padding(padding:EdgeInsets.only(top:15),
                  child: Container(
                     child:GestureDetector(
                         onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return LoginScreen();
                      }));
                      },
                      child: Center(
                        child: Text("Already have an account? Log in.",
                          style: TextStyle(
                            fontSize: 20,
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
            ),
         
        ],
      )
    );
  }
}