import 'package:adhil/ScreenPage/sidebar.dart';
import 'package:flutter/material.dart';

import 'HomePageScreen.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: const [
            SideBar(),
            HomePageScreen(),

            // dummyPage(),
          ],
        ),
      ),
    );
  }
}
