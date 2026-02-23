import 'package:bkash_dummy_app/core/app_colors.dart';
import 'package:bkash_dummy_app/core/app_strings.dart';
import 'package:flutter/material.dart';

class QuickFeaturesSection extends StatelessWidget {
  const QuickFeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section heading
          const Text(
            AppStrings.quickFeatures,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.textDark,
            ),
          ),
          const SizedBox(height: 12),

          // Top row: payment method pills
          Row(
            children: [
              _PaymentPill(
                label: AppStrings.naeem,
                icon: Icons.circle_outlined,
                iconColor: Colors.orange,
              ),
              const SizedBox(width: 8),
              _PaymentPill(
                label: AppStrings.visa,
                icon: Icons.credit_card,
                iconColor: AppColors.textDark,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: AppColors.textDark,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(width: 8),
              _PaymentPill(
                label: AppStrings.locked,
                icon: Icons.lock_outlined,
                iconColor: AppColors.textGrey,
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Bottom row: feature cards
          Row(
            children: [
              _FeatureCard(
                icon: Icons.card_giftcard,
                label: AppStrings.myOffers,
                iconColor: Colors.orange,
                bgColor: const Color(0xFFFFF3E0),
              ),
              const SizedBox(width: 8),
              _FeatureCard(
                icon: Icons.discount_outlined,
                label: AppStrings.coupons,
                iconColor: AppColors.primary,
                bgColor: const Color(0xFFFCE4EC),
              ),
              const SizedBox(width: 8),
              _FeatureCard(
                icon: Icons.emoji_events_outlined,
                label: AppStrings.rewards,
                iconColor: Colors.amber[700]!,
                bgColor: const Color(0xFFFFFDE7),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// A pill-shaped card for payment methods (top row of Quick Features).
class _PaymentPill extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color iconColor;
  final TextStyle? labelStyle;

  const _PaymentPill({
    required this.label,
    required this.icon,
    required this.iconColor,
    this.labelStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.divider),
        ),
        child: Row(
          children: [
            Icon(icon, color: iconColor, size: 18),
            const SizedBox(width: 6),
            Flexible(
              child: Text(
                label,
                overflow: TextOverflow.ellipsis,
                style:
                    labelStyle ??
                    const TextStyle(fontSize: 12, color: AppColors.textDark),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// A square feature card (bottom row of Quick Features).
class _FeatureCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;
  final Color bgColor;

  const _FeatureCard({
    required this.icon,
    required this.label,
    required this.iconColor,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Icon(icon, color: iconColor, size: 30),
            const SizedBox(height: 6),
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.textDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
