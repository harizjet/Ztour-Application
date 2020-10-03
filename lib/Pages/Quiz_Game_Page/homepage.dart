import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ztour_mobile/Pages/Quiz_Game_Page//quizpage.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String langname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF7C229),
          title: Center(
            child: Text(
              "Quiz",
              style: TextStyle(fontSize: 25, fontFamily: "Quando"),
            ),
          ),
          elevation: 0,
        ),
        body: Column(children: <Widget>[
          Container(
            height: 230,
            width: 1000,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/3.jpg"), fit: BoxFit.fill),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10.0)),
          Container(
            height: 50.0,
            width: 408,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(color: Color(0xFFF7C229)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Choose any level",
                  style: TextStyle(
                      fontFamily: "Quando", fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <
              Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => getjson(langname)));
              },
              padding: EdgeInsets.fromLTRB(50.0, 40.0, 50.0, 40.0),
              child: Text(
                langname = "EASY" ?? 'default value',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Color(0xFFF7C229),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => getjson(langname)));
              },
              padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
              child: Text(
                langname = "MEDIUM" ?? 'default value',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Color(0xFFF7C229),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ]),
          Padding(padding: EdgeInsets.only(top: 10)),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => getjson(langname)));
                  },
                  padding: EdgeInsets.fromLTRB(50.0, 40.0, 50.0, 40.0),
                  child: Text(
                    langname = "HARD" ?? 'default value',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Color(0xFFF7C229),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ])
        ]));
  }
}