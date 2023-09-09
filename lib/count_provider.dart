import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_prac/provider/count_provider.dart';


class CountProviderPage extends StatefulWidget {
  const CountProviderPage({super.key});

  @override
  State<CountProviderPage> createState() => _CountProviderPageState();
}

class _CountProviderPageState extends State<CountProviderPage> {
  //int score = 0;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //
  //   Timer.periodic(Duration(seconds: 1), (timer) {
  //     score++;
  //     print(score);
  //     setState(() {
  //
  //     });
  //   });
  // }
  @override
  Widget build(BuildContext context) {
final countProvider = Provider.of<CountProvider>(context, listen: false);
    print('build ');
    return Scaffold(
      appBar: AppBar(
        title: Text('why use provider'),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<CountProvider>(builder: (context,value,child){
          return Text(value.count.toString());

      }),
    //     Text(DateTime.now().hour.toString()+':'
    // +DateTime.now().minute.toString()+":"+DateTime.now().second.toString(),),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
             countProvider.setCount();
        }, child: Icon(Icons.add),
      ),
    );
  }
}
