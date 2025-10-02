import 'package:anime_app/core/constants/app_images.dart';
import 'package:anime_app/features/home/data/models/anime_model.dart';
import 'package:anime_app/features/home/screens/pages/details_screen.dart';
import 'package:anime_app/features/home/screens/widgets/anime_card_widget.dart';
import 'package:flutter/material.dart';

class AnimeListView extends StatelessWidget {
  const AnimeListView({super.key});

  final List<Anime> animes = const [
    Anime(
      image: AppImages.konanImage,
      title: "Detective Conan",
      genre: "Mystery",
      rating: 5.0,
    ),
    Anime(
      image: AppImages.hunterImage,
      title: "Hunter x Hunter",
      genre: "Adventure",
      rating: 5.0,
    ),
    Anime(
      image: AppImages.dragonImage,
      title: "Dragon Ball Z",
      genre: "Action",
      rating: 5.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: animes.length,
        itemBuilder: (context, index) {
          final anime = animes[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimeDetailsScreen(),
                ),
              );
            },
            child: AnimeCardWidget(
              image: anime.image,
              title: anime.title,
              genre: anime.genre,
              rating: anime.rating,
            ),
          );
        },
      ),
    );
  }
}
