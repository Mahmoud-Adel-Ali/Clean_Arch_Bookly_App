import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/use_cases/fetch_feature_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_bools_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featureBooksUseCase) : super(FeaturedBooksInitial());

  final FetchFeatureBooksUseCase featureBooksUseCase;

  Future<void> fetchFeaturedBooks({int pageNum = 0}) async {
    pageNum == 0
        ? emit(FeaturedBooksloading())
        : emit(FeaturedBooksPaginationloading());
    var result = await featureBooksUseCase.call(pageNum);
    result.fold(
        (failure) => pageNum == 0
            ? emit(FeaturedBooksFailure(errorMessage: failure.message))
            : emit(
                FeaturedBooksPaginationFailure(errorMessage: failure.message)),
        (books) => emit(FeaturedBooksSuccess(books: books)));
  }
}
