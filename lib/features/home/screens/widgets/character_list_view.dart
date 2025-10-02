import 'package:anime_app/core/constants/app_images.dart';
import 'package:anime_app/features/home/screens/widgets/character_card_widget.dart';
import 'package:flutter/material.dart';

class CharacterListView extends StatelessWidget {
  CharacterListView({super.key});
  final List<Map<String, String>> characters = [
    {
      "image": AppImages.c1Image,
      "name": "Gon Freecss",
      'des': 'Hunter x Hunter',
    },
    {"image": AppImages.narutoImage, "name": 'Naruto Uzumaki', 'des': 'Naruto'},
    {"image": AppImages.c3Image, "name": "Luffy", 'des': 'One Piece'},
    {
      "image": AppImages.c4Image,
      "name": "Conan Edogawa",
      'des': 'Detective Conan',
    },

    {"image": AppImages.c2Image, "name": "Goku ", 'des': 'Dragon Ball'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: characters.length,
        itemBuilder: (context, index) {
          final character = characters[index];
          return CharacterCardWidget(
            des: character['des']!,
            image: character["image"]!,
            name: character["name"]!,
          );
        },
      ),
    );
  }
}
