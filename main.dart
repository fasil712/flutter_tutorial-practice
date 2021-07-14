import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionindex = 0;
  void subAnswers() {
    setState(() {
      questionindex = questionindex - 1;
    });
    print(questionindex);
  }

  void addAnswers() {
    setState(() {
      questionindex = questionindex + 1;
    });
    print(questionindex);
  }

  @override
  Widget build(BuildContext context) {
    var q = ['Hello Fasil', 'Hello Animaw'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Quize'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Text(
            q[questionindex],
            style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
          ElevatedButton(child: Text('Answer 1'), onPressed: addAnswers),
          ElevatedButton(child: Text('Answer 2'), onPressed: subAnswers),
          ElevatedButton(child: Text('Answer 3'), onPressed: () {}),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
      ),
    );
  }
}
