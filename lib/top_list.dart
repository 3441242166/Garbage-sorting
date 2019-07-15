import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopList extends StatefulWidget {
  @override
  _TopListState createState() => _TopListState();
}

class _TopListState extends State<TopList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(left: 24, right: 24),
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
        color: Colors.brown,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 0.0),
            blurRadius: 5.0,
          )
        ],
      ),
    );
  }
}
