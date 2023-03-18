import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:movie_app/features/feed/presentation/widgets/filters_chips.dart';
import 'package:movie_app/features/feed/presentation/widgets/top_movies_list.dart';
import 'package:movie_app/utils/app_colors.dart';

class MoviesList extends StatefulWidget {
  const MoviesList({
    Key? key,
  }) : super(key: key);

  @override
  State<MoviesList> createState() => _MoviesListState();
}

class _MoviesListState extends State<MoviesList> {
  final searchControler = TextEditingController();
  final searchFocusNode = FocusNode();
  late final FeedBloc feedBloc;

  @override
  void initState() {
    super.initState();
    feedBloc = context.read<FeedBloc>()..add(FetchMoviesEvent());
  }

  @override
  void dispose() {
    searchControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final FeedBloc feedBloc = context.read<FeedBloc>();

    return BlocBuilder<FeedBloc, FeedState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FiltersChips(
              filters: [
                'Tudo',
                "Ação",
                "Aventura",
                "Comédia",
                "Crime",
                "Drama",
                "Romance",
                "Fantasia",
                "Ficção Científica",
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 20,
                bottom: 4,
                left: 16,
              ),
              child: Text(
                'Melhores Filmes',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.red,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 6,
                          color: Colors.black,
                          spreadRadius: 1,
                        )
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {
                        feedBloc.add(RotateSearchIconEvent());
                        feedBloc.add(ToggleSearchFieldEvent());
                        state.searchFieldStatus == SearchFieldStatus.hidden
                            ? searchFocusNode.requestFocus()
                            : searchFocusNode.nextFocus();
                      },
                      icon: AnimatedRotation(
                        duration: const Duration(milliseconds: 500),
                        turns: state.rotateSearchIcon ? 1 : 0,
                        curve: Curves.easeInOutCubic,
                        child: const Icon(
                          Icons.search_outlined,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 350),
                    curve: Curves.easeInOutCubic,
                    padding: const EdgeInsets.only(
                      left: 8.0,
                    ),
                    width: state.searchFieldStatus == SearchFieldStatus.hidden
                        ? 0
                        : 300,
                    height: 40,
                    child: TextField(
                      controller: searchControler,
                      focusNode: searchFocusNode,
                      textInputAction: TextInputAction.search,
                      onChanged: (value) => feedBloc.add(
                          FilterListByNameEvent(label: value.toLowerCase())),
                      onEditingComplete: () {
                        feedBloc.add(RotateSearchIconEvent());
                        feedBloc.add(ToggleSearchFieldEvent());
                        searchFocusNode.unfocus();
                      },
                      cursorColor: AppColors.red,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            const EdgeInsets.only(bottom: 8, left: 16),
                      ),
                    ),
                  )
                ],
              ),
            ),

            // ignore: prefer_const_constructors
            TopMoviesList(),
          ],
        );
      },
    );
  }
}
