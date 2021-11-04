import 'package:flutter/material.dart';
import 'reusable_icon.dart';

Color nonActiveCardColor = Color(0xFF6F6FD4);

class ResultPage extends StatelessWidget {
  ResultPage({required this.res, required this.ans, required this.interpret});

  final String res;
  final String ans;
  final String interpret;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Center(
              child: Text(
                'YOUR RESULT',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: ReusableCard(
              colour: nonActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: double.infinity,
                  ),
                  Text(
                    res,
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                  ),
                  Text(
                    ans,
                    style: TextStyle(
                      fontSize: 110.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                  ),
                  Text(
                    interpret,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              margin: const EdgeInsets.only(top: 10.0),
              height: 60.0,
              width: double.infinity,
              color: Color(0xFFEB1555),
            ),
          ),
        ],
      ),
    );
  }
}
