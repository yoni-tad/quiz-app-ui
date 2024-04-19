import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app_ui/screens/homeScreen.dart';
import 'package:quiz_app_ui/utilities/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColor.primary,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

