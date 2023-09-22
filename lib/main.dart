import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_prac/Counter%20App/provider.dart';
import 'package:provider_prac/Enable%20Dark%20Theme/change_theme.dart';
import 'package:provider_prac/show_all.dart';
import 'Enable Dark Theme/provider_theme.dart';
import 'Faviourte Icon/faviourte_provider.dart';
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
      ChangeNotifierProvider(create: (_)=>ChangeThemeProvider()),
    ],
      child: Builder(
          builder: (BuildContext context){
          final themeChange = Provider.of<ChangeThemeProvider>(context);
          return MaterialApp(
         themeMode: themeChange.themeMode,
        theme: ThemeData(
          //primaryColor: Colors.orange,
          //appBarTheme: AppBarTheme(color: Colors.orange)
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark
        ),

        home: const ShowAll(),
        //ChangeTheme(),
        //const FaviourteWithProvider(),
        );
        }

    ),
    );

  }
}

