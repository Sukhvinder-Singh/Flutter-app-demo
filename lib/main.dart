import 'package:flutter/material.dart';
import 'package:sample_app_1/iterator.dart';
import 'package:sample_app_1/mainpage.dart';

void main() {
  runApp(MaterialApp(
    title: 'routed-app-sukhvinder-singh',
    initialRoute: '/',
    routes: {
      '/': (context) => MainScreen(),
    },
  ));
}

const Color color_home = Color.fromRGBO(0, 102, 255, 1.0);

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainPage(color_home, 'Welcome', 'assets/plane.jpg', 'Cities app',
        ['a'], cityModelsFromModel);
  }
}
