part of 'searched_books_cubit.dart';

@immutable
abstract class SearchedBooksState {}

final class SearchedBooksInitial extends SearchedBooksState {}

final class SearchedBooksLoading extends SearchedBooksState {}

final class SearchedBooksSuccess extends SearchedBooksState {
  final List<BookModel> books;

  SearchedBooksSuccess(this.books);
}

final class SearchedBooksFailure extends SearchedBooksState {
  final String errMessage;

  SearchedBooksFailure(this.errMessage);
}
