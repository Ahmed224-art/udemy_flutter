import 'package:flutter/material.dart';
import 'package:udemy_flutter/layout/home_layout.dart';

void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: HomeLayout());
  }

}
