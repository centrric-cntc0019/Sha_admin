import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../05_core/models/apiresponse.dart';
import '../../05_core/services/image_picker.dart';
import '../../03_domain/category/i_category_repo.dart';

part 'category_state.dart';
part 'category_event.dart';
part 'category_bloc.freezed.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final ICategoryRepo _iCategoryRepo;
  CategoryBloc(this._iCategoryRepo) : super(CategoryState.initial()) {
    on<_InitialEvent>((event, emit) {
      add(const CategoryEvent.getCategory());
    });

    // Get Category
    on<_GetCategory>(
      (event, emit) async {
        emit(state.copyWith(result: state.result.copyWith(loading: true)));
        final dataOrFailure = await _iCategoryRepo.getCategory();
        dataOrFailure.fold(
          (failure) => emit(
            state.copyWith(
              result: state.result.copyWith(loading: false, error: failure),
            ),
          ),
          (result) {
            emit(state.copyWith(
              result: state.result.copyWith(
                error: null,
                data: result,
                loading: false,
              ),
            ));
          },
        );
      },
    );

    // picker image from gallery
    on<_PickCategoryImage>((event, emit) {
      emit(state.copyWith(categoryImage: event.image));
    });

    on<_AddCategory>((event, emit) async {
      emit(state.copyWith(
          resultAddCategory: state.resultAddCategory.copyWith(loading: true)));

      await Future.delayed(const Duration(seconds: 5));

      emit(state.copyWith(
          resultAddCategory: state.resultAddCategory.copyWith(loading: false)));
    });
  }
}
