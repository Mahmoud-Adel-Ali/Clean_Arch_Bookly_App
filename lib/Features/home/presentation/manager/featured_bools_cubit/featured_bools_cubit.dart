import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/use_cases/fetch_feature_books_use_case.dart';

part 'featured_bools_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featureBooksUseCase) : super(FeaturedBooksInitial());

  final FetchFeatureBooksUseCase featureBooksUseCase;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksloading());
    var result = await featureBooksUseCase.call();
    result.fold(
        (failure) => emit(FeaturedBooksFailure(errorMessage: failure.message)),
        (books) => emit(FeaturedBooksSuccess(books: books)));
  }
}
