import 'package:flutter/material.dart';
import 'package:udemy_flutter/messenger_screen.dart';
import 'package:udemy_flutter/user_Screen.dart';

void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: UsersScreen(),
  );
  }

}
