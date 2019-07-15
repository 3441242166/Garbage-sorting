import 'package:api_flutter/test.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'xx',
      routes: {
        '/': (context) => MyHomePage(),
      },

      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
    );
  }
}
