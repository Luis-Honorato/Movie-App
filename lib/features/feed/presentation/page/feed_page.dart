import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/features/feed/presentation/widgets/feed.dart';
import 'package:movie_app/features/myList/favorite_list_page.dart';
import 'package:movie_app/utils/app_colors.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: TabBar(
                  physics: const NeverScrollableScrollPhysics(),
                  indicatorColor: AppColors.black,
                  labelColor: AppColors.red,
                  unselectedLabelColor: Colors.white,
                  labelStyle: GoogleFonts.roboto(
                    color: AppColors.red,
                    fontSize: 16,
                  ),
                  unselectedLabelStyle: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  indicator: const BoxDecoration(
                    color: AppColors.black,
                  ),
                  enableFeedback: false,
                  tabs: const [
                    Center(
                      child: Text(
                        'Filmes',
                      ),
                    ),
                    Text(
                      'Favoritos',
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Tab(child: Feed()),
                  Tab(child: FavoriteListPage()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
