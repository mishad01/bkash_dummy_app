import 'package:bkash_dummy_app/core/app_colors.dart';
import 'package:bkash_dummy_app/presentation/screens/home/widget/home_app_bar.dart';
import 'package:bkash_dummy_app/presentation/screens/home/widget/menu_grid.dart';
import 'package:bkash_dummy_app/presentation/screens/home/widget/promo_banner.dart';
import 'package:bkash_dummy_app/presentation/screens/home/widget/quick_feature_Section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        title: const HomeAppBar(),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: AppColors.lightGrey,
      body: Column(
        children: [
          // Scrollable content area
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(color: AppColors.white, child: const MenuGrid()),
                  Container(
                    color: AppColors.white,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: const PromoBanner(),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    color: AppColors.white,
                    child: const QuickFeaturesSection(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
