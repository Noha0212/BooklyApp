import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:flutter/material.dart';

part 'searched_books_state.dart';

class SearchedBooksCubit extends Cubit<SearchedBooksState> {
  SearchedBooksCubit(this.searchRepo) : super(SearchedBooksInitial());
  final SearchRepo searchRepo;
  Future<void> fetchSearchedBooks() async {
    emit(SearchedBooksLoading());
    var result = await searchRepo.fetchSearchedBooks();
    result.fold((failure) {
      emit(SearchedBooksFailure(failure.errMessage));
    }, (books) {
      emit(SearchedBooksSuccess(books));
    });
  }
}
