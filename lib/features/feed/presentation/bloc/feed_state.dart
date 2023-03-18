part of 'feed_bloc.dart';

enum SearchFieldStatus {
  shown,
  hidden,
}

enum MoviesListStatus {
  initial,

  loading,
  success,
  failure,
}

class FeedState extends Equatable {
  final MoviesListStatus moviesStatus;
  final List<Movie> movies;
  final List<Movie> displayList;
  final List<Movie> favoriteList;
  final List<String> filtersChips;
  final SearchFieldStatus searchFieldStatus;
  final bool rotateSearchIcon;
  final Movie? currentMovie;

  const FeedState({
    required this.filtersChips,
    required this.movies,
    required this.displayList,
    required this.favoriteList,
    this.moviesStatus = MoviesListStatus.initial,
    this.searchFieldStatus = SearchFieldStatus.hidden,
    this.rotateSearchIcon = false,
    this.currentMovie,
  });

  bool isFavoriteMovie(Movie movie) => favoriteList.contains(movie);

  FeedState copyWith({
    MoviesListStatus? moviesStatus,
    List<Movie>? movies,
    List<Movie>? displayList,
    List<Movie>? favoriteList,
    List<String>? filtersChips,
    SearchFieldStatus? searchFieldStatus,
    bool? rotateSearchIcon,
    Movie? currentMovie,
  }) {
    return FeedState(
      moviesStatus: moviesStatus ?? this.moviesStatus,
      movies: movies ?? this.movies,
      displayList: displayList ?? this.displayList,
      favoriteList: favoriteList ?? this.favoriteList,
      filtersChips: filtersChips ?? this.filtersChips,
      searchFieldStatus: searchFieldStatus ?? this.searchFieldStatus,
      rotateSearchIcon: rotateSearchIcon ?? this.rotateSearchIcon,
      currentMovie: currentMovie ?? this.currentMovie,
    );
  }

  @override
  List<Object?> get props => [
        moviesStatus,
        movies,
        displayList,
        favoriteList,
        searchFieldStatus,
        filtersChips,
        rotateSearchIcon,
        currentMovie,
      ];
}
