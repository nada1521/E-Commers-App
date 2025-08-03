import 'package:e_commerce/core/service/service_locator.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/features/Home/Favoret/view/screen/favoret_screen.dart';
import 'package:e_commerce/features/Home/Home/data/repos/home_repos.dart';
import 'package:e_commerce/features/Home/Home/logic/Product/product_cubit.dart';
import 'package:e_commerce/features/Home/My%20Cart/view/screen/my_cart_screen.dart';
import 'package:e_commerce/features/Home/Profile/views/screen/profil_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import '../../Home/logic/category/category_cubit.dart';
import '../../Home/view/screen/home_screen.dart';

PersistentTabController controller = PersistentTabController();

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CategoryCubit>(
          create: (context) =>
              CategoryCubit(getIt.get<HomeRepos>())..getAllCategories(),
        ),
        BlocProvider(
          create: (context) =>
              ProductCubit(getIt.get<HomeRepos>())..getAllProducts(),
        ),
      ],
      child: PersistentTabView(
        context,
        controller: controller,
        items: _navBarsItems(),
        screens: _builderScreens(),
        navBarStyle: NavBarStyle.style6,
        padding: EdgeInsets.only(bottom: 10),
        backgroundColor: AppColors.white,
      ),
    );
  }
}

List<Widget> _builderScreens() {
  return [HomeScreen(), MyCartScreen(), FavoretScreen(), ProfilScreen()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    persistentBottomNavBarItem(titel: 'Home', icon: Icons.home),
    persistentBottomNavBarItem(titel: 'My Cart', icon: Icons.shopping_cart),
    persistentBottomNavBarItem(titel: 'Favoret', icon: Icons.favorite),
    persistentBottomNavBarItem(titel: 'Profile', icon: Icons.person),
  ];
}

persistentBottomNavBarItem({required String titel, required dynamic icon}) {
  return PersistentBottomNavBarItem(
    icon: Icon(icon),
    title: (titel),
    activeColorPrimary: AppColors.orange,
    inactiveColorPrimary: AppColors.grey,
  );
}
