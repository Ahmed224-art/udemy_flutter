import 'package:flutter/material.dart';
import 'package:udemy_flutter/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  late bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultFormField(
                      controller: emailController,
                      type: TextInputType.emailAddress,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'email address must not be empty';
                        }
                        return null;
                      },
                      lable: 'email address',
                      prefix: Icons.remove_red_eye,
                      onSubmit: (value) {
                        emailController =
                            value.toString() as TextEditingController;
                        print(emailController.text);
                      },
                      onChanged: (value) {
                        print(value.toString());
                      }),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultFormField(
                    controller: passController,
                    type: TextInputType.visiblePassword,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'password must not be empty';
                      }
                      return null;
                    },
                    lable: 'password',
                    prefix: Icons.lock,
                    onChanged: (value) {
                      print(value.toString());
                    },
                    onSubmit: (value) {
                      passController = value as TextEditingController;
                      print(passController.text);
                    },
                    suffix: Icons.remove_red_eye,
                    isPassword: isPassword,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultButton(
                      text: 'login',
                      width: double.infinity,
                      isUpperCase: false,
                      textcolor: Colors.white,
                      buttoncolor: Colors.red,
                      function: () {
                        if (formKey.currentState!.validate()) {
                          print(emailController.text);
                          print(passController.text);
                        }
                      }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account'),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'regester now',
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
