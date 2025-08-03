import 'package:e_commerce/core/constant/app_assets_svg.dart';
import 'package:e_commerce/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomAppbareHome extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbareHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: AppBar(
        title: Text(
          'E-Commerce',
          style: AppTextStyle.boldFontSize20Orang.copyWith(fontSize: 25),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(AppAssetsPng.test),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0); // Set the height
}
