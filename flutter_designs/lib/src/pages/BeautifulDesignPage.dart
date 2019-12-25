import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BeautifulDesignPage extends StatelessWidget {
  const BeautifulDesignPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            _backgroundApp(),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[_titles(), _buttons()],
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottomNavigationbar(context));
  }

  Widget _backgroundApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ])),
    );

    final roseBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
          height: 360.0,
          width: 360.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ]),
          )),
    );

    return Stack(
      children: <Widget>[gradient, Positioned(top: -100, child: roseBox)],
    );
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify Transaction',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(
              height: 10.0,
            ),
            Text('Classify this transaction into a particular',
                style: TextStyle(fontSize: 18.0, color: Colors.white))
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationbar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), title: Text('Calendar')),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outlined), title: Text('Statistics')),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), title: Text('Contacts'))
        ],
      ),
    );
  }

  Widget _buttons() {
    return Table(
      children: [
        TableRow(children: [
          _curveButton(Colors.blue,Icons.border_all,'General'),
          _curveButton(Colors.purpleAccent,Icons.directions_bus,'Bus'),
        ]),
        TableRow(children: [
          _curveButton(Colors.pinkAccent,Icons.shop,'Buy'),
          _curveButton(Colors.orange,Icons.insert_drive_file,'File'),
        ]),
        TableRow(children: [
          _curveButton(Colors.blueAccent,Icons.movie_filter,'Entertainment'),
          _curveButton(Colors.green,Icons.cloud,'Grosery'),
        ]),
        TableRow(children: [
          _curveButton(Colors.red,Icons.collections,'Photos'),
          _curveButton(Colors.teal,Icons.help_outline,'Help'),
        ]),
      ],
    );
  }

  Widget _curveButton(Color color,IconData icon, String title) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              Text(
                title,
                style: TextStyle(color: color),
              ),
              SizedBox(height: 5.0),
            ],
          ),
        ),
      ),
    );
  }
}
