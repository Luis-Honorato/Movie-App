part of 'feed_bloc.dart';

abstract class FeedEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchMoviesEvent extends FeedEvent {}

class SetChipFiltersEvent extends FeedEvent {
  final String label;
  final List<String> allFilters;

  SetChipFiltersEvent({
    required this.label,
    required this.allFilters,
  });
}

class RotateSearchIconEvent extends FeedEvent {}

class ToggleSearchFieldEvent extends FeedEvent {}

class FilterListByNameEvent extends FeedEvent {
  final String label;

  FilterListByNameEvent({required this.label});
}

class SetCurrentMovieEvent extends FeedEvent {
  final Movie movie;

  SetCurrentMovieEvent({required this.movie});
}

class AddMovieToFavoriteListEvent extends FeedEvent {
  final Movie movie;

  AddMovieToFavoriteListEvent({required this.movie});
}

class RemoveMovieToFavoriteListEvent extends FeedEvent {
  final Movie movie;

  RemoveMovieToFavoriteListEvent({required this.movie});
}
