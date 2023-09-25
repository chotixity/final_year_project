import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // Future.delayed(const Duration(seconds: 3), () {
    //   Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    // });
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 200,
              child: CircleAvatar(
                minRadius: 350,
                backgroundImage: AssetImage(
                  'assets/images/images.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
