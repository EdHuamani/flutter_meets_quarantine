import 'package:flutter/material.dart';

import 'login_screen.dart';

// Esto inicia la app
void main() => runApp(AppDemo());

class AppDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.purple,
        primaryColor: Colors.teal,
        // backgroundColor: Colors.green,
        // scaffoldBackgroundColor: Colors.green,
      ),
      home: LoginScreen(),
    );
  }
}
