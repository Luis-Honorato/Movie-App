import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/feed/domain/entities/movie.dart';
import 'package:movie_app/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:movie_app/features/feed/presentation/page/movie_page.dart';
import 'package:movie_app/features/feed/presentation/widgets/movie_chips_infos.dart';

class TopMoviesList extends StatefulWidget {
  const TopMoviesList({super.key});

  @override
  State<TopMoviesList> createState() => _TopMoviesListState();
}

class _TopMoviesListState extends State<TopMoviesList> {
  @override
  Widget build(BuildContext context) {
    final List<Movie> movies = context.read<FeedBloc>().state.displayList;

    return BlocBuilder<FeedBloc, FeedState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          height: 350,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return MoviesListViewWidget(
                movie: movies[index],
              );
            },
          ),
        );
      },
    );
  }
}

class MoviesListViewWidget extends StatelessWidget {
  final Movie movie;
  const MoviesListViewWidget({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    final FeedBloc feedBloc = context.read<FeedBloc>();
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                feedBloc.add(SetCurrentMovieEvent(movie: movie));
                Navigator.pushNamed(
                  context,
                  MoviePage.routeName,
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    Image.network(movie.image),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        '#${movie.rank}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 35,
            child: MovieChipsInfos(movie: movie),
          ),
        ],
      ),
    );
  }
}
