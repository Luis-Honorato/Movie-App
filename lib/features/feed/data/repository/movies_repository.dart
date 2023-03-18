import 'package:dartz/dartz.dart';
import 'package:movie_app/features/feed/data/adapter/movies_list_adapter.dart';

import 'package:movie_app/features/feed/data/datasource/movies_data_source.dart';
import 'package:movie_app/features/feed/domain/entities/movie.dart';
import 'package:movie_app/features/feed/domain/repository/movies_repository.dart';
import 'package:movie_app/features/feed/errors/feed_failures.dart';

class MoviesRepository implements IMoviesRepository {
  final MoviesDataSource moviesDataSource;

  MoviesRepository({
    required this.moviesDataSource,
  });

  @override
  Future<Either<Failure, List<Movie>>> getMovies() async {
    try {
      final response = moviesDataSource.topMovies;

      final moviesList = MoviesListAdapter.fromJson(response);

      return Right(moviesList);
    } catch (e) {
      return const Left(ServerFailure(''));
    }
  }
}
