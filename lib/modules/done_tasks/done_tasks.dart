import 'package:flutter/material.dart';

class DonTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Done Tasks',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
          color: Colors.black,
        ),
      ),
    );
  }
}
