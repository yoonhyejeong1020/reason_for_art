import 'package:flutter/material.dart';
import 'package:reason_for_art_app/di/di.dart';
import 'package:reason_for_art_app/presentation/view/component/text_field_widget.dart';
import 'package:reason_for_art_app/presentation/view_model/artwork_view_model.dart';
import 'package:reason_for_art_app/utils/context_utils.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final ArtworkViewModel artworkViewModel = DI().get<ArtworkViewModel>();

  @override
  void initState() {
    super.initState();

    artworkViewModel.scrollController.addListener(artworkViewModel.onScroll);

    artworkViewModel.addListener(updateScreen);
  }

  void updateScreen() => setState(() {});

  @override
  void dispose() {
    // artworkViewModel.scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: ssW(context),
          height: ssH(context),
          child: SingleChildScrollView(
            child: Column(
              children: [
                searchTextFieldWidget(context: context, controller: TextEditingController(), placeholder: '작품, 화가, 미술관 등 검색'),
                Image.network(artworkViewModel.artworkList[0].imageId!),
                Text('작품', style: textTheme(context).displayMedium),
                10.sbH,
                SingleChildScrollView(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    controller: artworkViewModel.scrollController,
                    itemCount: artworkViewModel.artworkList.length + 1,
                    itemBuilder: (context, index) {
                      if (index == artworkViewModel.artworkList.length) {
                        return Center(child: CircularProgressIndicator());
                      }

                      return Container(
                        width: 100,
                        height: 100,
                        child: Image.network(artworkViewModel.artworkList[index].imageId!),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _artList() => Column(
    children: [

    ],
  );
}
