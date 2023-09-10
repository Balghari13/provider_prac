import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_prac/provider/count_provider.dart';


class SliderWithProvider extends StatefulWidget {
  const SliderWithProvider({super.key});

  @override
  State<SliderWithProvider> createState() => _SliderWithProviderState();
}

class _SliderWithProviderState extends State<SliderWithProvider> {

  @override
  Widget build(BuildContext context) {
    final sliderProvider = Provider.of<SliderProvider>(context,listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider with provider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(builder: (context,value, child){
            return Slider(
              min:0, max: 1,
                value: value.value, onChanged:(val){
              value.setValue(val);
            });
          }),
          Consumer<SliderProvider>(builder: (context,value,child){
            return Row(
              children: [
                Expanded(child: Container(color: Colors.red.withOpacity(value.value), height: 100,)),
                Expanded(child: Container(color: Colors.green.withOpacity(value.value),height: 100,)),
              ],
            );
          })


        ],
      ),
    );
  }
}
