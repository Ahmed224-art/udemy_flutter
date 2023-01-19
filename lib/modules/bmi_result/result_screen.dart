import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final bool isMale;
  final double result;
  final int age;
  ResultScreen({
    required this.isMale,
    required this.age,
    required this.result,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_sharp
          ),
        ),
        title: Text(
          'BMI Result'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale?'MAle':'Female'}',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              'Result : ${result.round()}',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              'Age : ${age}',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
