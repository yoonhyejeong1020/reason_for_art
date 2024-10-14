import 'package:flutter/material.dart';
import 'package:reason_for_art_app/di/di.dart';
import 'package:reason_for_art_app/presentation/view_model/artwork_view_model.dart';

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
  }

  void updateScreen() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column()
      ),
    );
  }

  Widget _artList() => Column(
    children: [

    ],
  );
}
