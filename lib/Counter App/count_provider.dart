import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_prac/Counter%20App/provider.dart';


class CountProviderPage extends StatelessWidget {
  const CountProviderPage({super.key});

  //int score = 0;
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
