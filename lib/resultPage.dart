import 'package:flutter/material.dart';
import 'calculatorBrain.dart';
import 'inputPage.dart';

class resultPage extends StatelessWidget {
  String result;
  String resultText;
  String interpret;
  resultPage({this.result, this.resultText, this.interpret});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(bottom: 35),
                child: Text(
                  "Your Result",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                )),
          ),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  resultText.toUpperCase(),
                  style: TextStyle(color: Colors.green[600], fontSize: 18),
                ),
                Text(
                  result,
                  style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Normal BMI range: ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF8D8E98),
                    fontSize: 20,
                  ),
                ),
                Text(
                  "18.5 - 25Kg/m2",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Text(interpret,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                child: Center(
                  child: Text(
                    "RECALCULATE",
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
