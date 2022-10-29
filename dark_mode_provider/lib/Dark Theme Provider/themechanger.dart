import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'darkthemeprovider.dart';

class ThemeChangerUi extends StatefulWidget {
  const ThemeChangerUi({super.key});

  @override
  State<ThemeChangerUi> createState() => _ThemeChangerUiState();
}

class _ThemeChangerUiState extends State<ThemeChangerUi> {
  @override
  Widget build(BuildContext context) {
    final darkthemeProvider = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Changer"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          RadioListTile(
            title: Text("Light Mode"),
            value: ThemeMode.light,
            groupValue: darkthemeProvider.themeMode,
            onChanged: darkthemeProvider.setTheme,
          ),
          RadioListTile(
            title: Text("Dark Mode"),
            value: ThemeMode.dark,
            groupValue: darkthemeProvider.themeMode,
            onChanged: darkthemeProvider.setTheme,
          ),
          RadioListTile(
            title: Text("System Mode"),
            value: ThemeMode.system,
            groupValue: darkthemeProvider.themeMode,
            onChanged: darkthemeProvider.setTheme,
          )
        ],
      ),
    );
  }
}
