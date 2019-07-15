import 'package:api_flutter/result.dart';
import 'package:api_flutter/top_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TopList(),
          ResultView(),
        ],
      ),
    );
  }
}
