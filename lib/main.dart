import 'package:anime_app/features/home/screens/pages/home_screen.dart';
import 'package:anime_app/features/upgrade%20plan/presentation/screens/pages/upgrade_plan_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnimeApp());
}

class AnimeApp extends StatelessWidget {
  const AnimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
