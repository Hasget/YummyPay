import 'package:flutter/material.dart';
import 'package:flutter_app/screens/signin/SignInScreen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yammy Pay',
      theme: ThemeData(primaryColor: Colors.white),
      home: SignInScreen(),
    );
  }
}