import 'dart:math';

import 'package:flutter/material.dart';
import 'package:udemy_flutter/result_screen.dart';

class BmiiCalculator extends StatefulWidget {
  @override
  State<BmiiCalculator> createState() => _BmiiCalculatorState();
}

class _BmiiCalculatorState extends State<BmiiCalculator> {
  bool isMale=true;
  double hieght=180;
  double weight=40;
  int age=20;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale=true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                             color: isMale? Colors.blue: Colors.grey,
                            borderRadius: BorderRadius.circular(25.0)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('assets/images/male.png',
                              ),height: 90.0,
                                width: 90.0,
                              ),
                              SizedBox(height: 15.0,),
                              Text('MALE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0,),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale=false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: isMale?Colors.grey: Colors.blue,
                            borderRadius: BorderRadius.circular(25.0)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('assets/images/female.png'),
                              width: 90.0,
                                height: 90.0,
                              ),
                              SizedBox(height: 15.0,),
                              Text('MALE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[400],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('HEIGHT',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline:TextBaseline.alphabetic ,
                        children: [
                          Text('${hieght.round()}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),),
                          Text('CM',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                          ),),
                        ],
                      ),
                      Slider(value: hieght,
                          min: 80.0,
                          max: 220,
                          onChanged: (double value) {
                            setState(() {
                              hieght=value;
                            });
                          },)
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[400],
                        ),
                        child: Column(
                          children: [
                            Text('WEIGHT',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),),
                            Text('${weight.round()}',
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed:() {
                                        setState(() {
                                          weight--;
                                        });
                                },
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                  heroTag: 'w-',
                                ),
                                FloatingActionButton(onPressed:() {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                  heroTag: 'w+',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[400],
                        ),
                        child: Column(
                          children: [
                            Text('Age',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),),
                            Text('${age}',
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed:() {
                                    setState(() {
                                      age--;
                                    });
                                },
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                  heroTag: 'A-',
                                ),
                                FloatingActionButton(onPressed:() {
                                      setState(() {
                                        age++;
                                      });
                                },
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                  heroTag: 'A+',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          Container(
            color: Colors.red,
            width: double.infinity,
            child: MaterialButton(onPressed: () {
              var result = weight /pow(hieght / 100,2);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultScreen(age: age,
                  isMale: isMale,
                    result: result,
                  ),));
            },
              height: 50.0,
              child: Text(
                'CALCULATOR',
                style: TextStyle(
                   color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
//var result = weight /pow(height / 100,2);
//print(result.round());