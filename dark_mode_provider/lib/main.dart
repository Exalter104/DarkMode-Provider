import 'package:dark_mode_provider/Dark%20Theme%20Provider/darkthemeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Dark Theme Provider/themechanger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => DarkThemeProvider()),
        ],
        child: Builder(builder: (BuildContext context) {
          final darkthemeProvider = Provider.of<DarkThemeProvider>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: darkthemeProvider.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.blue,
            ),
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.blue,
                appBarTheme: AppBarTheme(
                    backgroundColor: Color.fromARGB(255, 53, 52, 52)),
                iconTheme: IconThemeData(color: Colors.amber)),
            // themeMode: Provider.of<DarkThemeProvider>(context).themeMode,
            home: const ThemeChangerUi(),
          );
        }));
  }
}
