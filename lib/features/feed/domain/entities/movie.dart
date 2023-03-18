import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int rank;
  final String title;
  final String thumbnail;
  final double rating;
  final int year;
  final String image;
  final String description;
  final String trailer;
  final List<String> genre;
  final List<String> director;
  final List<String> writers;
  final bool? isFavorite;

  const Movie({
    required this.rank,
    required this.title,
    required this.thumbnail,
    required this.rating,
    required this.year,
    required this.image,
    required this.description,
    required this.trailer,
    required this.genre,
    required this.director,
    required this.writers,
    this.isFavorite = false,
  });

  Movie copyWith({
    int? rank,
    String? title,
    String? thumbnail,
    double? rating,
    int? year,
    String? image,
    String? description,
    String? trailer,
    List<String>? genre,
    List<String>? director,
    List<String>? writers,
    bool? isFavorite,
  }) {
    return Movie(
      rank: rank ?? this.rank,
      title: title ?? this.title,
      thumbnail: thumbnail ?? this.thumbnail,
      rating: rating ?? this.rating,
      year: year ?? this.year,
      image: image ?? this.image,
      description: description ?? this.description,
      trailer: trailer ?? this.trailer,
      genre: genre ?? this.genre,
      director: director ?? this.director,
      writers: writers ?? this.writers,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  List<Object?> get props {
    return [
      rank,
      title,
      thumbnail,
      rating,
      year,
      image,
      description,
      trailer,
      genre,
      director,
      writers,
      isFavorite,
    ];
  }
}
