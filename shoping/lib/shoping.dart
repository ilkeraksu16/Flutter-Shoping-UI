import 'package:flutter/material.dart';

class Deneme extends StatefulWidget {
  @override
  _DenemeState createState() => _DenemeState();
}

class _DenemeState extends State<Deneme> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height: 180.0,
              child: Row(
                children: <Widget>[
                  getResim('assets/picone.jpeg'),
                  getResim('assets/pictwo.jpeg'),
                  getResim('assets/picthree.jpeg'),
                ],
              ),
            ),
            SizedBox(height: 2.5,),
            Container(
              height: 180.0,
              child: Row(
                children: <Widget>[
                  getResim('assets/picfour.jpeg'),
                  getResim('assets/picfive.jpeg'),
                  getResim('assets/picsix.jpeg'),
                ],
              ),
            ),
            SizedBox(height: 2.5,),
            Container(
              height: 180.0,
              child: Row(
                children: <Widget>[
                  getResim('assets/picone.jpeg'),
                  getResim('assets/pictwo.jpeg'),
                  getResim('assets/picthree.jpeg'),
                ],
              ),
            ),
            SizedBox(height: 2.5,),
            Container(
              height: 180.0,
              child: Row(
                children: <Widget>[
                  getResim('assets/picfour.jpeg'),
                  getResim('assets/picfive.jpeg'),
                  getResim('assets/picsix.jpeg'),
                ],
              ),
            ),
          ],
        ),
        
      ],
    );
  }
  Widget getResim(String path){
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        height: 180.0,
        width: (MediaQuery.of(context).size.width / 3) -20.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 2.0,
              color: Colors.white,
              spreadRadius: 2.0,
            ),
          ],
          image:DecorationImage(
            image: AssetImage(path),fit: BoxFit.cover,
          ),
        ),

      ),
    );
  }
  
}