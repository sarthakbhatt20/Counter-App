import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> spanishNumber = [
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "seite",
    "ocho",
    "nueve",
    "dietz",
  ];
  String defaultText = "Spanish numbers";
  String defaultInt = "Count";

  void displayNumbers() {
    setState(() {
      defaultText = spanishNumber[counter];
      defaultInt = (counter + 1).toString();
      if (counter < 9) {
        counter++;
      } else {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Spanish Counter'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                defaultText,
                style: TextStyle(fontSize: 30.0, color: Colors.deepPurple),
              ),
              Text(
                defaultInt,
                style: TextStyle(fontSize: 30.0, color: Colors.deepPurple),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              /*ElevatedButton(
                onPressed: displayNumbers,
                child: Text(
                  'Call numbers',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                  primary: Colors.deepPurple,
                ),
              )*/
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: displayNumbers,
        child: Icon(
          Icons.numbers_rounded,
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurple,
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
