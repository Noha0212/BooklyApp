import 'package:bookly_app/core/widgets/custom_error_widget.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:bookly_app/features/search/presentation/view_model/searched_books_cubit/searched_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchedBooksCubit, SearchedBooksState>(
      builder: (context, state) {
        if (state is SearchedBooksInitial) {
          return const Center(child: Text('Search for books'));
        } else if (state is SearchedBooksSuccess) {
          if (state.books.isEmpty) {
            return const Center(child: Text('No results found.'));
          }
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is SearchedBooksFailure) {
          return const CustomErrorWidget(errMessage: '');
        } else {
          return const Text('');
        }
      },
    );
  }
}
