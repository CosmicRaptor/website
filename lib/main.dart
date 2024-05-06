import 'package:flutter/material.dart';
import 'package:website/router.dart';

double? screenwidth;
double? screenheight;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    screenwidth ??= MediaQuery.of(context).size.width;
    screenheight ??= MediaQuery.of(context).size.height;
    return MaterialApp.router(
      routerConfig: router,
      title: 'Website',
    );
  }
}
