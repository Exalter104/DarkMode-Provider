import 'package:flutter/material.dart';
import 'package:martverse_api_with_provider/Screens/authloginscreen.dart';
import 'package:provider/provider.dart';

import 'Provider/authlogin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => Loginprovider())],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const LoginScreen(),
        ));
  }
}
