import 'package:flutter/cupertino.dart';
import 'package:reason_for_art_app/data/model/artwork_model.dart';
import 'package:reason_for_art_app/data/repository/artwork_repository.dart';

class ArtworkViewModel extends ChangeNotifier {
  final ArtworkRepository _artworkRepository;

  ArtworkViewModel({required ArtworkRepository artworkRepository}) : _artworkRepository = artworkRepository;

  ArtworkModel? artworkModel;

  GlobalKey imageGlobalKey = GlobalKey();
  double imageHeight = 370;

  List<ArtworkModel> artworkList = [];

  ScrollController scrollController = ScrollController();

  Future<void> getRandomArtworkModel() async {
    await _artworkRepository.getRandomArtworkId();
    artworkModel = await _artworkRepository.getRandomArtworkModel();
    print('ArtworkViewModel artworkModel: $artworkModel');
    notifyListeners();
  }

  Future<void> getArtworkList() async {
    artworkList.addAll(await _artworkRepository.getArtworkList());
    notifyListeners();
  }

  void imageLoadingBuilder() {
    if (imageGlobalKey.currentContext!= null) {
      final RenderBox renderBox = imageGlobalKey.currentContext?.findRenderObject() as RenderBox;
      final size = renderBox.size;
      imageHeight = size.height;
      print('MuseumObjectViewModel: image Height $imageHeight');
    }
  }

  Future<void> onScroll() async {
    if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
      // if ()
      await getArtworkList();
    }
  }
}