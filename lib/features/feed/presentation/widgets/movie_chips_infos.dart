import 'package:flutter/material.dart';
import 'package:movie_app/features/feed/domain/entities/movie.dart';
import 'package:movie_app/utils/app_colors.dart';

class MovieChipsInfos extends StatelessWidget {
  const MovieChipsInfos({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.chipsColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 4,
            ),
            child: Text(
              movie.year.toString(),
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.chipsColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 4,
            ),
            child: Text(
              movie.genre[0],
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.chipsColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 4,
            ),
            child: Text(
              '⭐ ${movie.rating.toString()}',
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}
