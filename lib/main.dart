import 'package:flutter/material.dart';

void main(){
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //*******************

    // START OF TABVIEW ELEMENTS
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.account_circle_rounded), text: 'About Me'),
                Tab(icon: Icon(Icons.android_outlined), text: 'Projects'),
                Tab(icon: Icon(Icons.business_center_rounded), text: 'Contact'),
              ],
            ),
            title: Text('Portfolio App - AmosLee'),
            centerTitle: true,
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
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
              ],
            ),
          ),
            Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.lightBlueAccent,
                    ],
                  ),
                ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Android Projects',
                    style: TextStyle(
                      color: Colors.grey[200],
                      fontSize: 20.0,
                    ),),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Card(
                          child: Image.asset('calc.jpg',
                          semanticLabel: 'Simple Calculator',),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          child: Image.asset('ninja_app.jpg',
                            semanticLabel: 'An app implementing stateful widget',),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          child: Image.asset('login_ui.jpg',
                            semanticLabel: 'A Simple Login User Interface',),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.lightBlueAccent,
                  ],
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text('Personal Contact Details',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.grey[100],
                      ),),
                  ),
                  Divider(
                    height: 6.0,
                    color: Colors.grey[100],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: Colors.grey[200],
                            ),
                            Text('  +2349090222928',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey[200],
                              letterSpacing: 2.0,
                            ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.email_sharp,
                              color: Colors.grey[200],
                            ),
                            Text('  timilehinamos@gmail.com',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.grey[200],
                                letterSpacing: 2.0,
                              ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );

  // END OF TABVIEW ELEMENTS
  }
}
