import 'package:flutter/material.dart';
import 'package:news_app/widgets/bottom_navi_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: const BottomNavBar(index: 0),
      body: Container(

      ),
    );
  }
}



