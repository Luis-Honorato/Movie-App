import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/features/feed/domain/entities/movie.dart';
import 'package:movie_app/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:movie_app/features/feed/presentation/widgets/movie_chips_infos.dart';
import 'package:movie_app/utils/app_colors.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  static const routeName = '/movie';

  @override
  Widget build(BuildContext context) {
    final FeedBloc feedBloc = context.read<FeedBloc>();
    final Movie movie = feedBloc.state.currentMovie!;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 16),
        child: BlocBuilder<FeedBloc, FeedState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    movie.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MovieChipsInfos(movie: movie),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              (movie.isFavorite! ||
                                      state.favoriteList.contains(movie))
                                  ? feedBloc.add(
                                      RemoveMovieToFavoriteListEvent(
                                          movie: movie),
                                    )
                                  : feedBloc.add(
                                      AddMovieToFavoriteListEvent(movie: movie),
                                    );
                            },
                            icon: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                  color: (movie.isFavorite! ||
                                          state.favoriteList.contains(movie))
                                      ? AppColors.red
                                      : Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: Icon(
                                Icons.add_outlined,
                                color: (movie.isFavorite! ||
                                        state.favoriteList.contains(movie))
                                    ? AppColors.red
                                    : Colors.white,
                                size: 16,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    movie.title,
                    style: GoogleFonts.oswald(
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  child: Text(
                    movie.description,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Diretor:',
                    style: GoogleFonts.oswald(
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: movie.director.length,
                      itemBuilder: (context, index) {
                        return MovieCardInfo(
                          movie: movie.director,
                          index: index,
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Roteiristas:',
                    style: GoogleFonts.oswald(
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: movie.writers.length,
                      itemBuilder: (context, index) {
                        return MovieCardInfo(
                          movie: movie.writers,
                          index: index,
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class MovieCardInfo extends StatelessWidget {
  const MovieCardInfo({
    Key? key,
    required this.movie,
    required this.index,
  }) : super(key: key);

  final int index;
  final dynamic movie;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.chipsColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 1,
            )
          ],
        ),
        height: 60,
        width: 100,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            movie[index],
            style: GoogleFonts.oswald(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
