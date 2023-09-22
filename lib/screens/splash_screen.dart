import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    //Future.delayed(const Duration(seconds: 3), () {
    //  Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    //});
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 200,
              child: CircleAvatar(
                radius: 400,
                child: Image.asset(
                  'assets/images/images.png',
                  //height: 250,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Text(
              'KUSDA',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 38,
                color: theme.colorScheme.onSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
