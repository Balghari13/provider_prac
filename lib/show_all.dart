import 'package:flutter/material.dart';
import 'package:provider_prac/Counter%20App/count_provider.dart';
import 'package:provider_prac/Enable%20Dark%20Theme/change_theme.dart';
import 'package:provider_prac/Faviourte%20Icon/faviourte_without_provider.dart';
import 'package:provider_prac/Slider%20App/slider_provider.dart';

class ShowAll extends StatelessWidget {
  const ShowAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Practises'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const CountProviderPage()));
            }, child: const Text('Counter App')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SliderWithProvider()));
            }, child: const Text('Slider App')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const FaviourtePage()));
            }, child: const Text('Favourite Icon App')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChangeTheme()));
            }, child: const Text('Change Theme'))
          ],
        ),
      ),
    );
  }
}
