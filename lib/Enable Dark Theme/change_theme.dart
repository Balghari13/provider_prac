import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_prac/Enable%20Dark%20Theme/provider_theme.dart';

class ChangeTheme extends StatefulWidget {
  const ChangeTheme({super.key});

  @override
  State<ChangeTheme> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  @override
  Widget build(BuildContext context) {
    final changeTheme = Provider.of<ChangeThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Theme'),
      ),
      body: Column(
        children: [
RadioListTile(
    title: Text('Light Theme'),
    value: ThemeMode.light, groupValue: changeTheme.themeMode, onChanged: changeTheme.setTheme),
          RadioListTile(
            title: Text('Dark Theme'),
              value: ThemeMode.dark, groupValue: changeTheme.themeMode
              , onChanged: changeTheme.setTheme),
          RadioListTile(
              title: Text('System Theme'),
              value: ThemeMode.system, groupValue: changeTheme.themeMode, onChanged: changeTheme.setTheme)
        ],
      ),
    );
  }
}
