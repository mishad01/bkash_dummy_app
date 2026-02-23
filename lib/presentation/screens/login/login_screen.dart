import 'package:bkash_dummy_app/core/app_colors.dart';
import 'package:bkash_dummy_app/core/app_strings.dart';
import 'package:bkash_dummy_app/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _accountController = TextEditingController();
  final TextEditingController _pinController = TextEditingController();

  @override
  void dispose() {
    _accountController.dispose();
    _pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      body: Column(
        children: [
          Expanded(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),

                    // Top bar: back arrow + বাংলা button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: AppColors.primary,
                          ),
                          onPressed: () => Navigator.maybePop(context),
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: AppColors.primary),
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 6,
                            ),
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: const Text(
                            AppStrings.bangla,
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // Logo row: bKash logo + QR icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ImageIcon(
                          const AssetImage('assets/bkash.png'),
                          size: 40,
                          color: AppColors.primary,
                        ),
                        const Icon(
                          Icons.qr_code_2,
                          color: AppColors.primary,
                          size: 40,
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // Heading
                    Text(
                      AppStrings.logIn,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textDark,
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      AppStrings.loginSubtitle,
                      style: TextStyle(fontSize: 15, color: AppColors.textDark),
                    ),

                    const SizedBox(height: 28),

                    // Account Number TextField
                    TextField(
                      controller: _accountController,
                      keyboardType: TextInputType.phone,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textDark,
                      ),
                      decoration: const InputDecoration(
                        labelText: AppStrings.accountNumber,
                        labelStyle: TextStyle(
                          fontSize: 13,
                          color: AppColors.textGrey,
                        ),
                        border: UnderlineInputBorder(),

                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primary),
                        ),
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(bottom: 8),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // bKash PIN TextField
                    TextField(
                      controller: _pinController,
                      readOnly: true,
                      obscureText: true,
                      obscuringCharacter: '●',
                      keyboardType: TextInputType.none,
                      style: const TextStyle(
                        fontSize: 17,
                        color: AppColors.textDark,
                        letterSpacing: 4,
                      ),
                      decoration: InputDecoration(
                        labelText: AppStrings.bkashPin,
                        labelStyle: const TextStyle(
                          fontSize: 13,
                          color: AppColors.textGrey,
                          fontWeight: FontWeight.w600,
                        ),
                        hintText: AppStrings.enterPin,
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          color: AppColors.textGrey,
                          letterSpacing: 0,
                        ),
                        border: const UnderlineInputBorder(),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primary),
                        ),
                        enabledBorder: InputBorder.none,
                        contentPadding: const EdgeInsets.only(bottom: 8),
                        suffixIcon: const Icon(
                          Icons.fingerprint,
                          color: AppColors.primary,
                          size: 28,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Forgot PIN link
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const HomeScreen()),
                        );
                      },
                      child: const Text(
                        AppStrings.forgotPin,
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
