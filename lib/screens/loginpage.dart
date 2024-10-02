// ignore_for_file: must_be_immutable

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:linkedinlearning/utils/utils.dart';
import 'package:linkedinlearning/widgets/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void userLogin(BuildContext context) {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      Navigator.pushReplacementNamed(context, '/chat',
          arguments: '${userNameController.text},');
    } else {
      if (kDebugMode) {
        print('Not Successful');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Let\'s sign you in!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Welcome back',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.blueGrey),
                ),
                const Text(
                  'You\'ve been missed!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.blueGrey),
                ),
                verticalSpacing(15),
                LoginTextField(
                  controller: userNameController,
                  validator: (value) {
                    if (userNameController.text.isEmpty) {
                      return 'Incorrect username';
                    }
                    return null;
                  },
                  hintText: 'Username',
                  obscureText: false,
                ),
                verticalSpacing(15),
                LoginTextField(
                  controller: passwordController,
                  validator: (value) {
                    return null;
                  },
                  hintText: 'Password',
                  obscureText: true,
                ),
                verticalSpacing(15),
                MaterialButton(
                  minWidth: deviceWidth(context) / 1.5,
                  height: deviceWidth(context) * 0.15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () {
                    userLogin(context);
                  },
                  color: Colors.green,
                  child: const Text('Login'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
