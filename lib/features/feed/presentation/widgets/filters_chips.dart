import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:movie_app/utils/app_colors.dart';

class FiltersChips extends StatelessWidget {
  final List<String> filters;
  const FiltersChips({
    super.key,
    required this.filters,
  });

  @override
  Widget build(BuildContext context) {
    final FeedBloc feedBloc = context.read<FeedBloc>();

    return SizedBox(
      height: 40,
      child: BlocBuilder<FeedBloc, FeedState>(
        builder: (context, state) {
          return ListView.separated(
            itemCount: filters.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: FiltersWidget(
                label: filters[index],
                onSelected: () {
                  feedBloc.add(SetChipFiltersEvent(
                    label: filters[index],
                    allFilters: filters,
                  ));
                },
                bloc: feedBloc,
                isSelected: state.filtersChips.contains(filters[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}

class FiltersWidget extends StatelessWidget {
  final String label;
  final void Function() onSelected;
  final FeedBloc bloc;
  final bool isSelected;

  const FiltersWidget({
    super.key,
    required this.label,
    required this.onSelected,
    required this.bloc,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelected,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isSelected ? AppColors.red : AppColors.chipsColor,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
