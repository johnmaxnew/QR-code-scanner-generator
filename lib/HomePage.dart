import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:proscan/generator/QRGenerator.dart';
import 'package:proscan/scanner/ScanQR.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          "Proscan",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: (MediaQuery.of(context).size.height) - AppBar().preferredSize.height - kToolbarHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/logo.png"),
                    foregroundColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    radius: 80,
                  ),


                  SizedBox(height: 55,),

                  // New
                  Container(
                    width: ((MediaQuery.of(context).size.width) / 1.1) - 45,
                    height: 50,
                    child: OutlineButton(
                      focusColor: Colors.red,
                      highlightColor: Colors.blue,
                      hoverColor: Colors.lightBlue[100],
                      splashColor: Colors.blue,
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.blue,
                      ),
                      shape: StadiumBorder(),
                      child: Text(
                        "Scan QR",
                        style: TextStyle(fontSize: 17),
                        ),

                        onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ScanQR()));
                        },
                        onLongPress: () {
                          print('Long press');
                        },

                    ),
                  ),

                  SizedBox(height: 25,),
                  
                  // New
                  Container(
                    width: ((MediaQuery.of(context).size.width) / 1.1) - 45,
                    height: 50,
                    child: OutlineButton(
                      focusColor: Colors.red,
                      highlightColor: Colors.blue,
                      hoverColor: Colors.lightBlue[100],
                      splashColor: Colors.blue,
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.blue,
                      ),
                      shape: StadiumBorder(),
                      child: Text(
                        "Generate QR",
                        style: TextStyle(fontSize: 17),
                        ),
  
                        onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => QRGenerator()));
                        },
                        onLongPress: () {
                          print('Long press');
                        },
                    ),
                  ),

                  
                ],
              ),
          ),
        ),
      ),
    );
  }
}