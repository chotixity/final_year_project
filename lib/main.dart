import 'package:final_year_project/screens/HomeScreen.dart';
import 'package:final_year_project/screens/Login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final messengerkey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        brightness: Brightness.light,
        textTheme: TextTheme(
          displayMedium: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 22,
          ),
          displayLarge: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
          bodyMedium: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
      home: Authenticate(),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
