part of 'newest_books_cubit.dart';

abstract class NewestBooksState {}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksloading extends NewestBooksState {}

class NewestBooksFailure extends NewestBooksState {
  final String errorMessage;
  NewestBooksFailure({required this.errorMessage});
}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookEntity> books;

  NewestBooksSuccess({required this.books});
}
