import 'package:evently/screens/home/home_tab/home_header.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeHeader(),
    );
  }
}