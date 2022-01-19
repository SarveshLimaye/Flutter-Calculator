import 'dart:ui';

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  // Widget calcButton(String btnText,Color btnColor,Color textColor) {
  //   return (Container(
  //       child: ElevatedButton(
  //         onPressed: () {

  //         } ,
  //         child: Text("$btnText",
  //           style: TextStyle(
  //             fontSize: 35,
  //             color: textColor
  //           ),
  //         ),
  //     ),
  //   )
  // );
  // }

  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          '$btntxt',
        ),
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(95, 60),
            primary: btncolor,
            shape: CircleBorder(),
            textStyle: TextStyle(fontSize: 35, color: txtcolor)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        "0",
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white, fontSize: 100),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  calcbutton("AC", Colors.grey.shade700, Colors.white),
                  calcbutton("+/-", Colors.grey.shade700, Colors.white),
                  calcbutton("%", Colors.grey.shade700, Colors.white),
                  calcbutton("/", Colors.amber, Colors.white),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  calcbutton("7", Colors.grey.shade700, Colors.white),
                  calcbutton("8", Colors.grey.shade700, Colors.white),
                  calcbutton("9", Colors.grey.shade700, Colors.white),
                  calcbutton("x", Colors.amber, Colors.white),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  calcbutton("4", Colors.grey.shade700, Colors.white),
                  calcbutton("5", Colors.grey.shade700, Colors.white),
                  calcbutton("6", Colors.grey.shade700, Colors.white),
                  calcbutton("-", Colors.amber, Colors.black),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  calcbutton("1", Colors.grey.shade700, Colors.white),
                  calcbutton("2", Colors.grey.shade700, Colors.white),
                  calcbutton("3", Colors.grey.shade700, Colors.white),
                  calcbutton("+", Colors.amber, Colors.black),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "0",
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        textStyle: TextStyle(fontSize: 30, color: Colors.white),
                        padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
                        primary: Colors.grey.shade700),
                  ),
                  calcbutton(".", Colors.grey.shade700, Colors.white),
                  calcbutton("=", Colors.amber, Colors.white),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          )),
    );
  }
}
