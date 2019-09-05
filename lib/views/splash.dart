import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(SplashView());

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Frogmi example Application",
      theme: ThemeData.light(),
      home: SplashViewHome(),
      routes: <String, WidgetBuilder> {
        '/login' : (BuildContext context) => LoginView()
      },
    );
  }
}

/// Main content
class SplashViewHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashViewHomeState();
}

class SplashViewHomeState extends State<SplashViewHome> with TickerProviderStateMixin {
  AnimationController animationController;
  CurvedAnimation curvedAnimation;

  @override
  void initState() {
    animationController = AnimationController(duration: const Duration(milliseconds: 1000), vsync: this);
    curvedAnimation = CurvedAnimation(parent: animationController, curve: Curves.easeIn);

    // Start timer to go next View
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushNamed('/login');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    animationController.forward();
    return Center(
      child: Container(
          child: FadeTransition(
            opacity: curvedAnimation,
            child: FlutterLogo(size: 150)
          )
      )
    );
  }
}
