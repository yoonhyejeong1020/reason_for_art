import 'package:flutter/cupertino.dart';
import 'package:reason_for_art_app/data/model/artwork_model.dart';
import 'package:reason_for_art_app/data/repository/artwork_repository.dart';

class ArtworkViewModel extends ChangeNotifier {
  final ArtworkRepository _artworkRepository;

  ArtworkViewModel({required ArtworkRepository artworkRepository}) : _artworkRepository = artworkRepository;

  ArtworkModel? artworkModel;

  Future<void> getRandomArtworkModel() async {
    artworkModel = await _artworkRepository.getRandomArtworkModel();
    print(artworkModel);
    notifyListeners();
  }
}