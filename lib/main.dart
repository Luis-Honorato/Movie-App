import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/feed/data/datasource/movies_data_source.dart';
import 'package:movie_app/features/feed/domain/usecase/get_movies_usecase.dart';
import 'package:movie_app/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:movie_app/features/feed/presentation/page/feed_page.dart';
import 'package:movie_app/features/feed/presentation/page/movie_page.dart';
import 'package:movie_app/utils/app_colors.dart';

import 'features/feed/data/repository/movies_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeedBloc(
        moviesUsecase: GetMoviesUsecase(MoviesRepository(
          moviesDataSource: MoviesDataSource(),
        )),
      ),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            color: AppColors.black,
          ),
          textTheme: const TextTheme(
            bodyText1: TextStyle(),
            bodyText2: TextStyle(),
            headline1: TextStyle(),
            headline2: TextStyle(),
            headline3: TextStyle(),
          ).apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          ),
          scaffoldBackgroundColor: AppColors.black,
          primaryColor: AppColors.black,
        ),
        routes: {
          MoviePage.routeName: (context) => const MoviePage(),
        },
        home: const FeedPage(),
      ),
    );
  }
}
