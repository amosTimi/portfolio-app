import 'dart:ui';

import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Roboto',
      ),
      home: PortfolioApp()),
  );
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio App',
        style: TextStyle(
          color: Colors.grey[100],
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.lightBlueAccent,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 50.0,
                  backgroundImage: AssetImage('amoslee.jpeg'),
                ),
              ),
            ),
            SizedBox(height: 6.0),
            Center(
              child: Text(
                'Agbetile Amos',
                style: TextStyle(
                  fontSize: 24.0,
                  letterSpacing: 2.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[100],
                ),
              ),
            ),
            Center(
              child: Text(
                'Mobile Application Development Intern, Zuri',
                style: TextStyle(
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[100],
                ),
              ),
            ),
            Divider(
              height: 30.0,
              color: Colors.grey[200],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 2.0, 0.0, 10.0),
              child: Text(
                'BIO',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[100],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 2.0,16.0,0.0),
              child: Text(
                "Hi! I'm Amos and I'm a junior software developer."
                    "I write codes in Python programming language and recently "
                    "started learning to use dart and flutter for mobile application "
                    "development during the course of my internship with Zuri."
                    "I write codes for web and for mobile applications. I love solving problems "
                    "and like to work in a well organised team.",
                style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 1.0,
                  color: Colors.grey[100],

                ),
              ),
            ),
            Row(

            ),
          ],
        ),
      ),
    );
  }
}
