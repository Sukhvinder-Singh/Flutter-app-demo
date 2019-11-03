import 'package:flutter/material.dart';
import 'package:sample_app_1/contents.dart';
import 'package:sample_app_1/mainpage.dart';
import 'package:sample_app_1/template.dart';
import 'package:sample_app_1/testpage.dart';



void main() {
  runApp(MaterialApp(
    title: 'routed-app-sukhvinder-singh',
    initialRoute: '/',
    routes: {
      '/': (context) => MainScreen(),
      '/london': (context) => London(),
      '/newyork': (context) => NewYork(),
      '/paris': (context) => Paris(),
      '/tokyo': (context) => Tokyo(),
      '/testpage' : (context) => Tt(),
    },
  ));
}

const Color color_home = Color.fromRGBO(0, 102, 255, 1.0);
const Color color_london = Color.fromRGBO(204, 0, 0, 1.0);
const Color color_newyork = Color.fromRGBO(0, 153, 255, 1.0);
const Color color_paris = Color.fromRGBO(230, 138, 0, 1.0);
const Color color_tokyo = Color.fromRGBO(153, 0, 153, 1.0);

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainPage(
        color_home, 'Welcome', 'assets/plane.jpg', 'Cities app', home);
  }
}

class London extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
        color_london, 'United Kingdom', 'assets/london.jpg', 'London', london);
  }
}

class NewYork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
        color_newyork, 'U.S.A', 'assets/newyork.jpg', 'New York', newyork);
  }
}

class Paris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
        color_paris, 'France', 'assets/paris.jpg', 'Paris', paris);
  }
}

class Tokyo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageTemplate(
        color_tokyo, 'Japan', 'assets/tokyo.jpg', 'Tokyo', tokyo);
  }
}

class Tt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageTest();
}
}