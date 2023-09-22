import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_prac/Slider%20App/provider.dart';


class SliderWithProvider extends StatelessWidget {
  const SliderWithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final sliderProvider = Provider.of<SliderProvider>(context,listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider with provider'),
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
