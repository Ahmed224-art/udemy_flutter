import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width=double.infinity,
  bool isUpperCase =true,
  required String text ,
  required Color textcolor,
  required Color buttoncolor,
})=>Container(
  clipBehavior:Clip.antiAliasWithSaveLayer ,
  width: width,
  decoration:BoxDecoration(
      borderRadius: BorderRadiusDirectional.all(Radius.circular(25.0))
  ),
  child: MaterialButton(onPressed: () {

  },
    color: buttoncolor,
    child: Text(
      isUpperCase ?text.toUpperCase():text,
      textAlign:TextAlign.center,
      style: TextStyle(
        color: textcolor,
        fontSize: 20.0,
      ),
    ),
  ),

);