import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie_app/features/feed/domain/entities/movie.dart';
import 'package:movie_app/features/feed/domain/usecase/get_movies_usecase.dart';

part 'feed_event.dart';
part 'feed_state.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  final GetMoviesUsecase moviesUsecase;
  FeedBloc({
    required this.moviesUsecase,
  })
  // ignore: prefer_const_constructors
  : super(FeedState(
          filtersChips: ['Tudo'],
          movies: [],
          displayList: [],
          favoriteList: [],
        )) {
    on<FetchMoviesEvent>((event, emit) async {
      emit(state.copyWith(
        moviesStatus: MoviesListStatus.loading,
      ));

      final result = await moviesUsecase();

      result.fold(
        (failure) {
          emit(state.copyWith(
            moviesStatus: MoviesListStatus.failure,
          ));
          debugPrint('Erro ao carregar a Lista de filmes');
        },
        (movies) {
          emit(state.copyWith(
            moviesStatus: MoviesListStatus.success,
            movies: movies,
            displayList: movies,
          ));
          debugPrint('Lista de filmes carregada com sucesso');
        },
      );
    });

    on<SetChipFiltersEvent>((event, emit) {
      List<String> newList = state.filtersChips;
      if (event.label == 'Tudo') {
        state.filtersChips.contains(event.label)
            ? newList = []
            : newList = ['Tudo'];
      } else {
        newList = state.filtersChips
            .where(
              (element) => element != 'Tudo',
            )
            .toList();
        (state.filtersChips.contains(event.label))
            ? {
                newList = newList
                    .where(
                      (element) => element != event.label,
                    )
                    .toList(),
              }
            : {
                newList = newList..add(event.label),
              };
      }
      if (newList.isEmpty) newList.add('Tudo');

      emit(
        state.copyWith(
            filtersChips: newList,
            displayList: newList.contains('Tudo')
                ? state.movies
                : state.movies
                    .where((movie) => newList.contains(movie.genre[0]))
                    .toList()),
      );
    });

    on<FilterListByNameEvent>((event, emit) {
      emit(state.copyWith(
        filtersChips: ['Tudo'],
        displayList: state.movies
            .where((movie) =>
                movie.title.toLowerCase().contains(event.label.toLowerCase()))
            .toList(),
      ));
    });

    on<ToggleSearchFieldEvent>((event, emit) {
      emit(state.copyWith(
        searchFieldStatus: state.searchFieldStatus == SearchFieldStatus.hidden
            ? SearchFieldStatus.shown
            : SearchFieldStatus.hidden,
      ));
    });

    on<RotateSearchIconEvent>((event, emit) {
      emit(state.copyWith(
        rotateSearchIcon: !state.rotateSearchIcon,
      ));
    });

    on<SetCurrentMovieEvent>((event, emit) {
      emit(state.copyWith(
        currentMovie: event.movie,
      ));
      debugPrint('Filme: ${event.movie.title}');
    });

    on<AddMovieToFavoriteListEvent>((event, emit) {
      emit(state.copyWith(moviesStatus: MoviesListStatus.success));
      final List<Movie> newList = state.favoriteList;
      newList.add(event.movie);
      emit(state.copyWith(
        favoriteList: newList,
        currentMovie: state.currentMovie!.copyWith(isFavorite: true),
      ));
    });

    on<RemoveMovieToFavoriteListEvent>((event, emit) {
      emit(state.copyWith(moviesStatus: MoviesListStatus.success));
      final List<Movie> newList = state.favoriteList;
      newList.removeWhere(
        (element) => element == event.movie,
      );
      emit(state.copyWith(
        favoriteList: newList,
        currentMovie: state.currentMovie!.copyWith(isFavorite: false),
      ));
    });
  }
}
