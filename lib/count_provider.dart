import 'dart:async';

import 'package:flutter/material.dart';


class CountProvider extends StatefulWidget {
  const CountProvider({super.key});

  @override
  State<CountProvider> createState() => _CountProviderState();
}

class _CountProviderState extends State<CountProvider> {
  int score = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      score++;
      print(score);
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    print('build ');
    return Scaffold(
      appBar: AppBar(
        title: Text('why use provider'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(DateTime.now().hour.toString()+':'
    +DateTime.now().minute.toString()+":"+DateTime.now().second.toString(),),
        //Text('Score is ${score}'),
      ),
    );
  }
}
