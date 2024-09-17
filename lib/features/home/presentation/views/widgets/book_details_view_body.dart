import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_list_view.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                //////////
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                  child: const CustomBookImage(),
                ),
                const SizedBox(
                  height: 43,
                ),
                const Text(
                  'The Jungle Book',
                  style: Styles.textStyle30,
                ),
                const SizedBox(
                  height: 6,
                ),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 37,
                ),
                const BooksAction(),
                const Expanded(child: SizedBox(height: 49)),
                ////////////////
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Styles.textStyle16
                          .copyWith(fontWeight: FontWeight.w900),
                    )),
                const SizedBox(height: 16),
                const BookDetailsListView(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
