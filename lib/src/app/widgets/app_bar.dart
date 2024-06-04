import 'package:flutter/material.dart';
import 'package:paystreet/src/app/styles/app_colors.dart';
import 'package:paystreet/src/app/widgets/text_fonts.dart';

class PayStreetAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PayStreetAppBar({
    super.key,
    required this.title,
    this.elevation,
    this.actions = const [],
    this.centerTitle = false,
  });

  final String title;
  final List<Widget> actions;
  final double? elevation;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      // backgroundColor: AppColors.white,
      // backgroundColor: Colors.transparent,
      title: TextBold(
        title,
        fontSize: 20,
        color: AppColors.textPrimaryColor,
        fontWeight: FontWeight.w700,
      ),
      actions: actions,
      elevation: elevation ?? 0.0,
      centerTitle: centerTitle,
      // foregroundColor: AppColors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}