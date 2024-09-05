import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/presentation/manager/featured_bools_cubit/featured_bools_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_item.dart';

class FeaturedBooksListView extends StatefulWidget {
  const FeaturedBooksListView({Key? key, required this.books})
      : super(key: key);
  final List<BookEntity> books;

  @override
  State<FeaturedBooksListView> createState() => _FeaturedBooksListViewState();
}

class _FeaturedBooksListViewState extends State<FeaturedBooksListView> {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(scrollListener);
  }

  void scrollListener() {
    double currentPosition = scrollController.position.pixels;
    double maxScrollLenght = scrollController.position.maxScrollExtent;
    if (currentPosition >= 0.7 * maxScrollLenght) {
      BlocProvider.of<FeaturedBooksCubit>(context).fetchFeaturedBooks();
    }
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: widget.books.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CustomBookImage(image: widget.books[index].image ?? ""),
            );
          }),
    );
  }
}
