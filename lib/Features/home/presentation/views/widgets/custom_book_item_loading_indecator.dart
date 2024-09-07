import 'package:flutter/material.dart';

class CustomBookItemLoadingIndecator extends StatelessWidget {
  const CustomBookItemLoadingIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(color: Colors.grey)),
    );
  }
}
