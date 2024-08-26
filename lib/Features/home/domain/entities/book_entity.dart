import 'package:hive/hive.dart';
// to create this page content run (flutter packages pub run build_runner build)
// in terminal after write ( part 'book_entity.g.dart';) in this page
part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String bookId;
  @HiveField(1)
  final String? image;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String? authorName;
  @HiveField(4)
  final num? price;
  @HiveField(5)
  final num? rate;

  BookEntity({
    required this.image,
    required this.title,
    required this.authorName,
    required this.price,
    required this.rate,
    required this.bookId,
  });
}
