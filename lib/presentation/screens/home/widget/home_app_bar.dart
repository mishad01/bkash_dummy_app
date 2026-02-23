import 'package:bkash_dummy_app/core/app_colors.dart';
import 'package:bkash_dummy_app/core/app_strings.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            child: Icon(Icons.person, size: 20),
            backgroundColor: AppColors.white,
          ),
          SizedBox(width: 10),

          //Name + Tap for balance
          Column(
            children: [
              Text(
                AppStrings.userName,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                  fontWeight: .w600,
                ),
              ),
              _BalanceCheck(),
            ],
          ),
          Spacer(),

          //Search icon
          Container(
            height: 46,
            width: 46,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
            ),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ),

          SizedBox(width: 12),

          Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
            ),
            child: IconButton(
              onPressed: () {},
              icon: ImageIcon(AssetImage('assets/bkash.png')),
            ),
          ),
        ],
      ),
    );
  }
}

class _BalanceCheck extends StatelessWidget {
  const _BalanceCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
      ),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              '৳',
              style: TextStyle(
                fontSize: 11,
                fontWeight: .bold,
                color: AppColors.white,
              ),
            ),
          ),
          SizedBox(width: 5),
          Text(AppStrings.tapForBalance, style: TextStyle(fontSize: 13)),
        ],
      ),
    );
  }
}
