import 'package:flutter/material.dart';
import 'package:flutter_login/view/signin.view.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Login",
      home: SigninView(),
    );
  }
}