import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_prac/Counter%20App/provider.dart';
import 'Faviourte Icon/faviourte_provider.dart';
import 'Faviourte Icon/faviourte_wit_provider.dart';
import 'Slider App/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // return ChangeNotifierProvider(
    //     create: (_)=>CountProvider(),
    //   child:  MaterialApp(
    //     title: 'Flutter Demo',
    //     theme: ThemeData(
    //       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //       //useMaterial3: true,
    //     ),
    //     home: const CountProviderPage(),
    //   ),
    // );
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>CountProvider()),
      ChangeNotifierProvider(create: (_)=>SliderProvider()),
      ChangeNotifierProvider(create: (_)=>FaviourteProvider()),
    ],
      child: MaterialApp(
        home: const FaviourteWithProvider(),
      ),
    );

  }
}

