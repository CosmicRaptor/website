import 'package:flutter/material.dart';
import 'package:website/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Jetbrains-Mono',
      ),
      title: 'Cosmicraptor\'s Website ',
      debugShowCheckedModeBanner: false,
    );
  }
}
