import 'package:flutter/material.dart';
import 'package:reason_for_art_app/presentation/view_model/artwork_view_model.dart';

import '../../../di/di.dart';
import '../../../utils/color_utils.dart';
import '../../../utils/context_utils.dart';
import '../../view_model/animation_view_model.dart';
import '../../view_model/department_view_model.dart';
import '../../view_model/museum_object_view_model.dart';
import '../component/loading_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final DepartmentViewModel departmentViewModel = DI().get<DepartmentViewModel>();
  final MuseumObjectViewModel museumObjectViewModel = DI().get<MuseumObjectViewModel>();
  final AnimationViewModel animationViewModel = DI().get<AnimationViewModel>();
  final ArtworkViewModel artworkViewModel = DI().get<ArtworkViewModel>();

  @override
  void initState() {
    super.initState();

    animationViewModel.initLoadingAnimation(vsync: this);

    departmentViewModel.addListener(updateScreen);
    museumObjectViewModel.addListener(updateScreen);
  }

  void updateScreen() {
    if (artworkViewModel.artworkModel != null) {
      print('loadingAnimationController stop');
      animationViewModel.loadingAnimationController.stop();
    }
    if (mounted) setState(() {});
  }

  Widget _buildLoadingWidget(BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
    if (loadingProgress == null) {
      Future.delayed(Duration.zero, () => artworkViewModel.imageLoadingBuilder());
      return child;
    } else {
      return imageLoadingWidget(
        context: context,
        topAlignmentAnimation: animationViewModel.topAlignmentAnimation,
        bottomAlignmentAnimation: animationViewModel.bottomAlignmentAnimation,
      );
    }
  }

  @override
  void dispose() {
    animationViewModel.loadingAnimationController.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: artworkViewModel.artworkModel == null
            ? homeLoadingWidget(
            animationController: animationViewModel.loadingAnimationController,
            topAlignmentAnimation: animationViewModel.topAlignmentAnimation,
            bottomAlignmentAnimation: animationViewModel.bottomAlignmentAnimation,
          )
            : _artWidget(context: context),
      ),
    );
  }

  Widget _artWidget({required BuildContext context}) {
    return SingleChildScrollView(
      child: SizedBox(
        width: ssW(context),
        height: ssH(context),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Stack(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: ssH(context) * .7),
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  child: Image.network(
                    artworkViewModel.artworkModel!.imageId!,
                    key: artworkViewModel.imageGlobalKey,
                    width: ssW(context),
                    fit: BoxFit.contain,
                    loadingBuilder: (context, child, loadingProgress) => _buildLoadingWidget(context, child, loadingProgress),
                  ),
                ),
              ),
              Positioned(
                top: artworkViewModel.imageHeight,
                child: Container(
                  width: ssW(context) - 20,
                  height: ssH(context),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        45.sbH,
                        Text(
                          artworkViewModel.artworkModel!.title!,
                          style: textTheme(context).titleLarge,
                        ),
                        15.sbH,
                        Text(
                          '${artworkViewModel.artworkModel!.mediumDisplay} ${artworkViewModel.artworkModel!.dimensions!}',
                          style: textTheme(context).bodySmall,
                        ),
                        20.sbH,
                        Row(
                          children: [
                            Container(
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: ColorUtils.primaryColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Text('${artworkViewModel.artworkModel!.artistDisplay}', style: textTheme(context).titleMedium,),
                              ),
                            )
                          ],
                        ),
                        20.sbH,
                        Divider(color: ColorUtils.primaryColor),
                        20.sbH,
                        Text(
                          '${artworkViewModel.artworkModel!.description}',
                        ),
                        50.sbH,
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: artworkViewModel.imageHeight - 30,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorUtils.primaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(museumObjectViewModel.getTodayDate(), style: textTheme(context).titleSmall),
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: artworkViewModel.imageHeight- 30,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorUtils.primaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  alignment: Alignment.center,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share),
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                right: 20 + 50 + 10,
                top: artworkViewModel.imageHeight - 30,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorUtils.primaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  alignment: Alignment.center,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
