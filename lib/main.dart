import 'package:flutter/material.dart';
import 'package:udemy_flutter/modules/bmi/bmi_calculator.dart';
import 'package:udemy_flutter/modules/counter/counter_Screen.dart';
import 'package:udemy_flutter/modules/login/login_screen.dart';
import 'package:udemy_flutter/modules/messenger/messenger_screen.dart';
import 'package:udemy_flutter/modules/bmi_result/result_screen.dart';
import 'package:udemy_flutter/modules/users/user_Screen.dart';

void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
  );
  }

}
