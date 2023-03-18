import 'package:dartz/dartz.dart';
import 'package:movie_app/features/feed/domain/entities/movie.dart';
import 'package:movie_app/features/feed/domain/repository/movies_repository.dart';
import 'package:movie_app/features/feed/errors/feed_failures.dart';

class GetMoviesUsecase {
  final IMoviesRepository repository;

  GetMoviesUsecase(this.repository);

  Future<Either<Failure, List<Movie>>> call() async {
    return await repository.getMovies();
  }
}
