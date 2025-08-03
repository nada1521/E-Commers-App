import 'package:e_commerce/features/Home/Home/view/widgets/search_and_catigory_list_view.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar_home.dart';
import '../widgets/product_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomAppbareHome(),
            SearchAndCatigoryListView(),
            ProductListView(),
          ],
        ),
      ),
    );
  }
}
