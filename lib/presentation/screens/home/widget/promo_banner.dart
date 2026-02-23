import 'package:bkash_dummy_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class PromoBanner extends StatefulWidget {
  const PromoBanner({super.key});

  @override
  State<PromoBanner> createState() => _PromoBannerState();
}

class _PromoBannerState extends State<PromoBanner> {
  final int _currentPage = 0;
  final int _pageCount = 4;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Image.asset('assets/offfer_banner.png'),
        Row(
          mainAxisAlignment: .center,
          children: List.generate(_pageCount, (index) {
            return Container(
              width: index == _currentPage ? 16 : 6,
              height: 6,
              margin: .symmetric(horizontal: 3),
              decoration: BoxDecoration(
                color: index == _currentPage
                    ? AppColors.primary
                    : AppColors.bannerDotInactive,
                borderRadius: .circular(3),
              ),
            );
          }),
        ),
      ],
    );
  }
}
