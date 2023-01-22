import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  bool isUpperCase = true,
  required String text,
  required Color textcolor,
  required Color buttoncolor,
  required Function function,
})=>Container(
  clipBehavior: Clip.antiAliasWithSaveLayer,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.all(Radius.circular(25.0))),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        color: buttoncolor,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textcolor,
            fontSize: 20.0,
          ),
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onChanged,
  Function(String)? onSubmit,
  required String? Function(String?)? validate,
  required String lable,
  required IconData prefix,
  bool isPassword = false,
  IconData? suffix,
  Function suffixPressed()?,
}) =>
    TextFormField(
      obscureText: isPassword,
      controller: controller,
      keyboardType: type,
      onChanged: onChanged,
      onFieldSubmitted: onSubmit,
      validator: validate,
      decoration: InputDecoration(
        //hintText: "Email Address",
        labelText: lable,
        border: OutlineInputBorder(),
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed, icon: Icon(Icons.remove_red_eye))
            : null,
      ),
    );