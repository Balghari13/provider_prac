import 'package:flutter/material.dart';


class ExapmleApp extends StatelessWidget {
  const ExapmleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('prac'),
    ),
  body: Column(
children: [
  Expanded(
    child: Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
          ),
        ),
        Expanded(
          child: Container(margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  ),

  Expanded(
    child: Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
    ),
  ),
  Expanded(
    child: Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  ),

],
  ),
    );
  }
}
