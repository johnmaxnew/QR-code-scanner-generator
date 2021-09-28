import 'dart:ui';

import 'package:flutter/material.dart';
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
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: (MediaQuery.of(context).size.height) - AppBar().preferredSize.height - kToolbarHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/logo.png"),
                    foregroundColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    radius: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Hero(
                        tag: "Scan QR",
                        child: Container(
                          width: ((MediaQuery.of(context).size.width) / 2) - 45,
                          height: 50,
                          child:  OutlinedButton(
                              child: Text('Scan QR',style: TextStyle(fontSize: 19),),
                              style: OutlinedButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.deepPurpleAccent,
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                              
                              ),
                              onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ScanQR()));
                              },
                              onLongPress: () {
                                print('Long press');
                              },
                          ),                       
                        ),
                      )
                    ],
                  )
                ],
              ),
          ),
        ),
      ),
    );
  }
}