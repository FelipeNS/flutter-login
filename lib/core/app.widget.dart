import 'package:flutter/material.dart';
import 'package:flutter_login/store/app.store.dart';
import 'package:flutter_login/view/home.view.dart';
import 'package:flutter_login/view/signin.view.dart';
import 'package:flutter_login/view/signup.view.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppStore>.value(
          value: AppStore(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Login",
        routes: {
          '/': (context) => const HomeView(),
          '/signin': (context) => SigninView(),
          '/signup': (context) => const SignupView()
        },
        initialRoute: '/signin',
      ),
    );
  }
}