import 'package:flutter/material.dart';



class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: _width,
        height: _height,
        child: SafeArea(
          child: Padding(padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: _height * 0.20),
                  Text(
                    "EASY EVENT",
                    style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold, color: Colors.blueAccent),
                  ),
                  SizedBox(height: _height * 0.05),
                  Text(
                    "Let's plan your next event",
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                  ),
                  SizedBox(height: _height * 0.10),
                  RaisedButton(
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, right: 30.0, left: 30.0, bottom: 10.0),
                      child: Text("Student", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w300),),
                    ),
                    onPressed: (){
                      Navigator.of(context).pushReplacementNamed('/signIn');
                    },
                  ),
                  SizedBox(height: _height * 0.05),
                  RaisedButton(
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, right: 30.0, left: 30.0, bottom: 10.0),
                      child: Text("Admin", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w300),),
                    ),
                    onPressed: (){
                      Navigator.of(context).pushReplacementNamed('/signIn');
                    },
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}