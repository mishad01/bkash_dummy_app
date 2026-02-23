import 'package:bkash_dummy_app/core/app_colors.dart';
import 'package:bkash_dummy_app/data/model/home_menu_item_model.dart';
import 'package:flutter/material.dart';

class MenuGridItem extends StatelessWidget {
  const MenuGridItem({super.key, required this.item});
  final HomeMenuItemModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisSize: .min,
        spacing: 6,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.iconCircleBg,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.06),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Icon(item.iconData, color: item.iconColor, size: 28),
          ),

          Text(
            item.label,
            textAlign: .center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 12,
              color: AppColors.textDark,
              fontWeight: .w500,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}
