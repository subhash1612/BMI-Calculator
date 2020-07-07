import 'package:bmicalc/resultPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculatorBrain.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

enum Gender { Male, Female }

Gender gender;
int height = 174;
int weight = 35;
int age = 15;

class inputPage extends StatefulWidget {
  @override
  _inputPageState createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: cardDesign(
                  onPressed: () {
                    setState(() {
                      gender = Gender.Male;
                    });
                  },
                  cardColor: gender == Gender.Male
                      ? Color(0xFF1d1e33)
                      : Color(0xFF111328),
                  insideWid: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FaIcon(FontAwesomeIcons.mars, size: 80),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "Male",
                        style:
                            TextStyle(fontSize: 20.0, color: Color(0xFF8D8E98)),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: cardDesign(
                  onPressed: () {
                    setState(() {
                      gender = Gender.Female;
                    });
                  },
                  cardColor: gender == Gender.Female
                      ? Color(0xFF1d1e33)
                      : Color(0xFF111328),
                  insideWid: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FaIcon(FontAwesomeIcons.venus, size: 80),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "Female",
                        style:
                            TextStyle(fontSize: 20.0, color: Color(0xFF8D8E98)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: cardDesign(
                  insideWid: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "HEIGHT",
                        style:
                            TextStyle(color: Color(0xFF8D8E98), fontSize: 15),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                                color: Color(0xFF8D8E98), fontSize: 15),
                          ),
                        ],
                      ),
                      Slider(
                          min: 100,
                          max: 250,
                          value: height.toDouble(),
                          onChanged: (double value) {
                            setState(() {
                              height = value.round();
                            });
                          }),
                    ],
                  ),
                  cardColor: Color(0xFF1d1e33),
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: cardDesign(
                  insideWid: Column(
                    children: <Widget>[
                      Text(
                        "WEIGHT",
                        style:
                            TextStyle(color: Color(0xFF8D8E98), fontSize: 15),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "kg",
                            style: TextStyle(
                                color: Color(0xFF8D8E98), fontSize: 15),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RawMaterialButton(
                            child: Icon(FontAwesomeIcons.plus),
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            shape: CircleBorder(),
                            fillColor: Colors.blue,
                            elevation: 6.0,
                            constraints: BoxConstraints.tightFor(
                                width: 56.0, height: 56.0),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RawMaterialButton(
                            child: Icon(FontAwesomeIcons.minus),
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                              if (weight < 0) {
                                weight = 0;
                              }
                            },
                            shape: CircleBorder(),
                            fillColor: Colors.blue,
                            elevation: 6.0,
                            constraints: BoxConstraints.tightFor(
                                width: 56.0, height: 56.0),
                          ),
                        ],
                      )
                    ],
                  ),
                  cardColor: Color(0xFF1d1e33),
                ),
              ),
              Expanded(
                child: cardDesign(
                  insideWid: Column(
                    children: <Widget>[
                      Text(
                        "AGE",
                        style:
                            TextStyle(color: Color(0xFF8D8E98), fontSize: 15),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            age.toString(),
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "yrs",
                            style: TextStyle(
                                color: Color(0xFF8D8E98), fontSize: 15),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RawMaterialButton(
                            child: Icon(FontAwesomeIcons.plus),
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            shape: CircleBorder(),
                            fillColor: Colors.blue,
                            elevation: 6.0,
                            constraints: BoxConstraints.tightFor(
                                width: 56.0, height: 56.0),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RawMaterialButton(
                            child: Icon(FontAwesomeIcons.minus),
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                              if (age < 1) {
                                age = 1;
                              }
                            },
                            shape: CircleBorder(),
                            fillColor: Colors.blue,
                            elevation: 6.0,
                            constraints: BoxConstraints.tightFor(
                                width: 56.0, height: 56.0),
                          ),
                        ],
                      )
                    ],
                  ),
                  cardColor: Color(0xFF1d1e33),
                ),
              ),
            ],
          )),
          GestureDetector(
            onTap: () {
              Calculatorbrain bmi =
                  Calculatorbrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => resultPage(
                    result: bmi.calculateBMI(),
                    resultText: bmi.getResult(),
                    interpret: bmi.getInterpretation(),
                  ),
                ),
              );
            },
            child: Container(
                child: Center(
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                color: Colors.blue,
                height: 80.0),
          )
        ],
      ),
    );
  }
}

class cardDesign extends StatelessWidget {
  Widget insideWid;
  Function onPressed;
  Color cardColor;
  cardDesign({this.insideWid, this.onPressed, this.cardColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: insideWid,
        margin: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
            color: cardColor, borderRadius: BorderRadius.circular(15.0)),
      ),
    );
  }
}
