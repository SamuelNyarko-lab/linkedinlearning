import 'package:flutter/material.dart';
import 'package:linkedinlearning/utils/utils.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  GlobalKey<FormState> _formKey = GlobalKey();

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Let\'s sign you in!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Welcome back',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.blueGrey),
                ),
                const Text(
                  'You\'ve been missed!',
                  style: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.blueGrey),
                ),
                verticalSpacing,
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blueGrey,
                          ),
                          borderRadius: BorderRadius.circular(
                            10,
                          ))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
