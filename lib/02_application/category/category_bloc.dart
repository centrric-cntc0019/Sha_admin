import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sha_admin/01_presentation/home/widgets/category_add_or_edit_widget.dart';
import 'package:sha_admin/01_presentation/widgets/toast.dart';
import 'package:sha_admin/03_domain/category/models/category_list/category_base_model.dart';
import 'package:sha_admin/03_domain/category/models/category_list/category_model.dart';

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

    // add category api state management
    on<_AddEditCategory>((event, emit) async {
      emit(state.copyWith(
          resultAddEditCategory:
              state.resultAddEditCategory.copyWith(loading: true)));

      if (event.image != null && event.categoryName != null) {
        dynamic dataOrFailure;

        if (event.enumCategoryAddEdit == EnumCategoryAddEdit.add) {
          dataOrFailure = await _iCategoryRepo.addCategoryApi(
              image: event.image!, categoryName: event.categoryName!);
        } else {
          if (event.categoryUUID != null) {
            dataOrFailure = await _iCategoryRepo.editCategoryApi(
                categoryUUID: event.categoryUUID!,
                image: event.image!,
                categoryName: event.categoryName!);
          } else {
            failureToast('Something went wrong');
          }
        }

        dataOrFailure.fold(
            (l) => emit(
                  state.copyWith(
                    resultAddEditCategory: state.resultAddEditCategory
                        .copyWith(loading: false, error: l),
                  ),
                ), (r) {
          emit(state.copyWith(resultAddEditCategory: ApiResponse()));

          // insert value into the list
          if (state.result.data != null) {
            CategoryBaseModel baseData = state.result.data;
            List<CategoryModel>? dataList = baseData.data?.toList();
            // category add
            if (event.enumCategoryAddEdit == EnumCategoryAddEdit.add) {
              dataList?.insert(0, r);
            } else {
              // category edit
              int? index =
                  dataList?.indexWhere((element) => element.id == r.id);

              if (index != null && index != -1) {
                dataList![index] = r;
              }
            }

            emit(state.copyWith(
                result: state.result
                    .copyWith(data: baseData.copyWith(data: dataList))));
          }

          // need to drop down pop up
          Navigator.pop(event.context);
        });
      } else {
        failureToast('Something went wrong');
      }

      emit(state.copyWith(
          resultAddEditCategory:
              state.resultAddEditCategory.copyWith(loading: false)));
    });

    // reset after pop up dispose
    on<_AddCategoryReset>((event, emit) {
      emit(state.copyWith(
          resultAddEditCategory: ApiResponse(),
          addCatCtr: TextEditingController(),
          categoryImage: null));
    });

    // Reset Bloc
    on<_Reset>((event, emit) async {
      emit(CategoryState.initial());
    });
  }
}
