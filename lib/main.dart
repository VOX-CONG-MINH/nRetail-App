import 'package:flutter/material.dart';

import 'di/di.dart';
import 'presentation/presentation.dart';

void main() {
  configureInjection();
  runApp(const nRetailApp());
}

class nRetailApp extends StatelessWidget {
  const nRetailApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MainScreen(),
    );
  }
}
