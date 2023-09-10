import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_prac/count_provider.dart';
import 'package:provider_prac/provider/count_provider.dart';
import 'package:provider_prac/slider_provider.dart';

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
    ],
      child: MaterialApp(
        home: const SliderWithProvider(),
      ),
    );

  }
}

