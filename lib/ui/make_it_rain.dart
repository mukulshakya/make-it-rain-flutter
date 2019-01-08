import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  _MakeItRainState createState() => _MakeItRainState();
}

class _MakeItRainState extends State<MakeItRain> {

  var _moneyCounter = 0;
  Color _color = Colors.greenAccent.shade400;
  void _makeItRain() {
    setState(() {
      if(_moneyCounter >= 1000 && _moneyCounter < 2000) {
        _color = Colors.red;
      }
      else if (_moneyCounter >= 2000 && _moneyCounter < 3000) {
        _color = Colors.blue;
      }
      else if (_moneyCounter >= 3000 && _moneyCounter < 4000) {
        _color = Colors.amber.shade900;
      }
      else if (_moneyCounter >= 4000 && _moneyCounter < 5000) {
        _color = Colors.black;
      }
      _moneyCounter += 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: new Text("Make It Rain"),
        ),
        backgroundColor: _color,
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Text(
              "Get Rich!",
              style: new TextStyle(color: Colors.grey, fontSize: 30),
            ),
            new Expanded(
                child: new Center(
              child: new Text("\$ $_moneyCounter",
                style: new TextStyle(
                    color: _color,
                    fontSize: 40,
                    fontWeight: FontWeight.w700),
              ),
            )),
            new Expanded(
                child: Center(
              child: new FlatButton(
                  color: _color,
                  onPressed: _makeItRain,
                  child: new Text(
                    "Click to Make it Rain",
                    style: new TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ))
          ],
        ),
      ),
    );
  }
}
