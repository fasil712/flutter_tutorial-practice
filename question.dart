import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questions;

  Question(this.questions);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.only(left: 23),
      child: Text(
        questions,
        style:
            TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.w100),
      ),
    );
  }
}
