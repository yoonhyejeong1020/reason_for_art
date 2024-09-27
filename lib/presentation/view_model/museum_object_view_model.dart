import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../data/model/museum_object_model.dart';
import '../../data/repository/museum_object_repository.dart';

class MuseumObjectViewModel extends ChangeNotifier {
  final MuseumObjectRepository _museumObjectRepository;

  MuseumObjectViewModel({required MuseumObjectRepository museumObjectRepository}) : _museumObjectRepository = museumObjectRepository;

  MuseumObjectModel? museumObjectModel;

  GlobalKey imageGlobalKey = GlobalKey();

  double imageHeight = 370;

  String getTodayDate() => DateFormat('yyyy.MM.dd').format(DateTime.now());

  void getMuseumObject() async {
    museumObjectModel = await _museumObjectRepository.getRandomMuseumObjectModel();
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

}