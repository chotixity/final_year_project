import 'package:flutter/material.dart';

import '../widgets/drawer.dart' as draw;

class HomeScreen extends StatelessWidget {
  static const routeName = '/Homescreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      drawer: const draw.Draweer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: theme.primaryColor,
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/images.png'),
            ),
            title: Text(
              'KUSDA CHURCH',
              style: theme.textTheme.displayMedium,
            ),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {
                  const draw.Draweer();
                },
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                iconSize: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
