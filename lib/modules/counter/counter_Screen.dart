import 'package:flutter/material.dart';

class Counterscreen extends StatefulWidget {
  @override
  State<Counterscreen> createState() => _CounterscreenState();
}
class _CounterscreenState extends State<Counterscreen> {
  int counter=1;

  @override
  void initState() {
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () {
              setState(() {
                counter--;
                print(counter);
              });

            }, child: Text('Mins'),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('${counter}',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            TextButton(onPressed: () {
                setState(() {
                  counter++;
                  print(counter);
                });
            }, child: Text('Plus'),),
          ],
        ),
      ),
    );
  }
}
