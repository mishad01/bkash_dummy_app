import 'package:bkash_dummy_app/core/app_colors.dart';
import 'package:bkash_dummy_app/presentation/screens/home/widget/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.primary, title: HomeAppBar()),
      body: Center(child: Text("Home screen")),
    );
  }
}
