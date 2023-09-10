import 'package:flutter/material.dart';
import '../widgets/base_temp.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.from(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
            useMaterial3: true),
        home: const BaseTemplate());
  }
}
