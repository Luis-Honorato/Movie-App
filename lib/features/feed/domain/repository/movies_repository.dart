import 'package:dartz/dartz.dart';
import 'package:movie_app/features/feed/domain/entities/movie.dart';
import 'package:movie_app/features/feed/errors/feed_failures.dart';

abstract class IMoviesRepository {
  Future<Either<Failure, List<Movie>>> getMovies();
}
