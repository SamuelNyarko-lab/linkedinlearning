import 'package:flutter/material.dart';
import 'package:linkedinlearning/screens/chatpage.dart';
import 'package:linkedinlearning/screens/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter with LinkedInLearning',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(
            background: Colors.white,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.lightBlue,
            foregroundColor: Colors.black,
          )),
      home: LoginPage(),
      //adding named routed
      routes: {
        '/login': (context) => LoginPage(),
        '/chat': (context) => ChatPage(),
      },
    );
  }
}
