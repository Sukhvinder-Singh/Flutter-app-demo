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

var mainScreenText = [
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
];

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainPage(color_home, 'Welcome', 'assets/plane.jpg', 'Cities app',
        mainScreenText, cityModelsFromModel);
  }
}
