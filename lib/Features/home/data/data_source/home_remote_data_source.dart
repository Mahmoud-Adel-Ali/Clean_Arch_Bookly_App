import 'package:bookly/Features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeatureBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  @override
  Future<List<BookEntity>> fetchFeatureBooks() {
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {
    throw UnimplementedError();
  }
}
