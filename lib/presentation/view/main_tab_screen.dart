import 'package:flutter/material.dart';
import 'package:reason_for_art_app/presentation/view/tab_screen/favorite_screen.dart';
import 'package:reason_for_art_app/presentation/view/tab_screen/home_screen.dart';
import 'package:reason_for_art_app/presentation/view/tab_screen/search_screen.dart';
import 'package:reason_for_art_app/presentation/view/tab_screen/settings_screen.dart';
import 'package:reason_for_art_app/presentation/view_model/artwork_view_model.dart';

import '../../di/di.dart';
import '../../utils/color_utils.dart';
import '../view_model/department_view_model.dart';
import '../view_model/main_tab_view_model.dart';
import '../view_model/museum_object_view_model.dart';

class MainTabScreen extends StatefulWidget {
  const MainTabScreen({super.key});

  @override
  State<MainTabScreen> createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen> {
  final MainTabViewModel mainTabViewModel = DI().get<MainTabViewModel>();
  final DepartmentViewModel departmentViewModel = DI().get<DepartmentViewModel>();
  final MuseumObjectViewModel museumObjectViewModel = DI().get<MuseumObjectViewModel>();
  final ArtworkViewModel artworkViewModel = DI().get<ArtworkViewModel>();

  @override
  void initState() {
    super.initState();

    departmentViewModel.getDepartmentList();
    museumObjectViewModel.getMuseumObject();
    artworkViewModel.getRandomArtworkModel();

    mainTabViewModel.addListener(updateScreen);
  }

  void updateScreen() => setState(() {});

  @override
  Widget build(BuildContext context) {
    const List<Widget> screen = [
      HomeScreen(),
      FavoriteScreen(),
      SearchScreen(),
      SettingsScreen(),
    ];

    return SafeArea(
      child: Scaffold(
        body: screen[mainTabViewModel.bottomNavCurrentIndex],
        bottomNavigationBar: _bottomNav(context: context),
      ),
    );
  }

  Widget _bottomNav({required BuildContext context}) => ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          onTap: mainTabViewModel.bottomNavOnTap,
          currentIndex: mainTabViewModel.bottomNavCurrentIndex,
          backgroundColor: ColorUtils.primaryColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white38,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings'),
          ],
        ),
      );
}
