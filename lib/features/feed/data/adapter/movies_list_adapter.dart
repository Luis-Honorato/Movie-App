import 'package:movie_app/features/feed/domain/entities/movie.dart';

class MoviesListAdapter {
  MoviesListAdapter._();

  static List<Movie> fromJson(List<Map<String, dynamic>> json) {
    return json.map((movie) => movieAdapter(movie)).toList();
  }

  static Movie movieAdapter(json) {
    return Movie(
      rank: json['rank'],
      title: json['title'],
      thumbnail: json['thumbnail'],
      rating: double.parse(json['rating']),
      year: json['year'],
      image: json['image'],
      description: json['description'],
      trailer: json['trailer'],
      genre: json['genre'],
      director: json['director'],
      writers: json['writers'],
    );
  }
}
