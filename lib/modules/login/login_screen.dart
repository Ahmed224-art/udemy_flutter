
import 'package:flutter/material.dart';
import 'package:udemy_flutter/shared/components/components.dart';

class LoginScreen extends StatelessWidget {
  var emailController=TextEditingController();
  var passController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
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
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value)
                  {
                    print(value.toString());
                  },
                  onFieldSubmitted: (value) {
                    print(value.toString());
                  },
                  decoration: InputDecoration(
                    //hintText: "Email Address",
                    labelText: "Email Address",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  controller: passController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onChanged: (value)
                  {
                    print(value.toString());
                  },
                  onFieldSubmitted: (value) {
                    print(value.toString());
                  },
                  decoration: InputDecoration(
                    //hintText: "Email Address",
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                defaultButton(text: 'login',
                width: double.infinity,
                  isUpperCase: false,
                  textcolor: Colors.white,
                   buttoncolor: Colors.red
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account'),
                    TextButton(onPressed: () {

                    }, child:Text(
                      'regester now',
                    ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
