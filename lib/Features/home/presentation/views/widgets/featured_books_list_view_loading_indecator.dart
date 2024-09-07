import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item_loading_indecator.dart';
import 'package:bookly/core/widgets/custom_fading_widget.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListViewLoadingIndecator extends StatelessWidget {
  const FeaturedBooksListViewLoadingIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomFadingWidget(child: CustomBookItemLoadingIndecator()),
            );
          }),
    );
  }
}
