// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessag;

  FeaturedBooksFailure(
    this.errMessag,
  );
}
