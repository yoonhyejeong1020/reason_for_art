import 'package:flutter/material.dart';
import 'package:reason_for_art_app/data/repository/artwork_repository.dart';
import 'package:reason_for_art_app/di/di.dart';
import 'package:reason_for_art_app/data/data_sources/shared_prefs.dart';
import 'package:reason_for_art_app/presentation/view/splash_screen.dart';
import 'package:reason_for_art_app/presentation/view_model/animation_view_model.dart';
import 'package:reason_for_art_app/presentation/view_model/artwork_view_model.dart';
import 'package:reason_for_art_app/presentation/view_model/auth_view_model.dart';
import 'package:reason_for_art_app/presentation/view_model/department_view_model.dart';
import 'package:reason_for_art_app/presentation/view_model/main_tab_view_model.dart';
import 'package:reason_for_art_app/presentation/view_model/museum_object_view_model.dart';
import 'package:reason_for_art_app/utils/theme_utils.dart';

import 'data/data_sources/api_data_sources.dart';
import 'data/repository/auth_repository.dart';
import 'data/repository/department_repository.dart';
import 'data/repository/museum_object_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final DI di = DI();
  final SharedPrefs sharedPrefs = SharedPrefs();
  await sharedPrefs.init();

  final ApiDataSources apiDataSources = ApiDataSources();

  final DepartmentRepository departmentRepository = DepartmentRepository(apiDataSources: apiDataSources);
  final MuseumObjectRepository museumObjectRepository = MuseumObjectRepository(apiDataSources: apiDataSources, sharedPrefs: sharedPrefs);
  final AuthRepository authRepository = AuthRepository(apiDataSources: apiDataSources, sharedPrefs: sharedPrefs);
  final ArtworkRepository artworkRepository = ArtworkRepository(apiDataSources: apiDataSources, sharedPrefs: sharedPrefs);

  final MainTabViewModel mainTabViewModel = MainTabViewModel();
  final DepartmentViewModel departmentViewModel = DepartmentViewModel(departmentRepository: departmentRepository);
  final MuseumObjectViewModel museumObjectViewModel = MuseumObjectViewModel(museumObjectRepository: museumObjectRepository);
  final AnimationViewModel animationViewModel = AnimationViewModel();
  final AuthViewModel authViewModel = AuthViewModel(authRepository: authRepository);
  final ArtworkViewModel artworkViewModel = ArtworkViewModel(artworkRepository: artworkRepository);

  di.set<MainTabViewModel>(mainTabViewModel);
  di.set<DepartmentViewModel>(departmentViewModel);
  di.set<MuseumObjectViewModel>(museumObjectViewModel);
  di.set<AnimationViewModel>(animationViewModel);
  di.set<AuthViewModel>(authViewModel);
  di.set<ArtworkViewModel>(artworkViewModel);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeDataUtils(),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
