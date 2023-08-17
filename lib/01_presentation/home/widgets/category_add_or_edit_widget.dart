import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sha_admin/03_domain/di/injection.dart';
import 'package:sha_admin/05_core/utils/themes.dart';

import '../../../02_application/category/category_bloc.dart';
import '../../../05_core/services/image_picker.dart';
import '../../widgets/toast.dart';
import '../../widgets/wa_text.dart';
import '../../widgets/wa_button.dart';
import '../../widgets/wa_text_field.dart';
import '../../../05_core/utils/constant.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

enum EnumCategoryAddEdit { add, edit }

class CategoryAddOrEditWidget extends StatelessWidget {
  final bool addCategory;
  final Function() onTap;
  final TextEditingController ctr;
  final GlobalKey<FormState> formKey;
  final EnumCategoryAddEdit categoryEnum;
  const CategoryAddOrEditWidget({
    super.key,
    required this.ctr,
    required this.onTap,
    required this.formKey,
    this.addCategory = true,
    required this.categoryEnum,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CategoryBloc>();
    return Padding(
      padding: EdgeInsets.only(
          top: 15.0,
          left: 15.0,
          right: 15.0,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WAText(
              text: categoryEnum == EnumCategoryAddEdit.add
                  ? 'Add Category'
                  : 'Edit Category',
              fontSize: 19.sp,
              fontWeight: FontWeight.w500,
            ),
            sized0hx20,
            if (addCategory) ...[
              BlocBuilder<CategoryBloc, CategoryState>(
                buildWhen: (previous, current) =>
                    previous.categoryImage != current.categoryImage,
                builder: (context, state) {
                  return Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () async {
                        ImagePickerModel? image =
                            await getIt<ImagePickerService>()
                                .imagePicker(context);
                        if (image != null) {
                          bloc.add(
                              CategoryEvent.pickCategoryImage(image: image));
                        }
                      },
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: state.categoryImage?.imagePath != null
                                ? (kIsWeb)
                                    ? Image.network(
                                        state.categoryImage!.imagePath!,
                                        fit: BoxFit.cover,
                                      )
                                    : Image.file(
                                        File(state.categoryImage!.imagePath!),
                                        fit: BoxFit.cover,
                                      )
                                : state.categoryImage?.imageUrl != null
                                    ? CachedNetworkImage(
                                        imageUrl:
                                            state.categoryImage!.imageUrl!,
                                        fit: BoxFit.cover,
                                      )
                                    : const Icon(
                                        Icons.image_outlined,
                                        size: 30.0,
                                      ),
                          ),
                          Positioned(
                            bottom: -10,
                            right: -10,
                            child: CircleAvatar(
                              backgroundColor:
                                  Theme.of(context).colorScheme.secondary,
                              child: const Icon(Icons.add),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
            sized0hx30,
            WaTextField(
              ctr: ctr,
              horizontalContentPadding: 20.0,
              borderColor: cDarkGrey,
              hintText: categoryEnum == EnumCategoryAddEdit.add
                  ? 'Enter category name'
                  : 'Edit category name',
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return "Please enter category name";
                }
                return null;
              },
            ),
            sized0hx40,
            BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, state) {
                return WAButton(
                  loading: state.resultAddEditCategory.loading,
                  onPressed: () {
                    if (state.categoryImage != null) {
                      if (formKey.currentState?.validate() ?? false) {
                        onTap();
                      }
                    } else {
                      failureToast('Please add image');
                    }
                  },
                  buttonText: state.resultAddEditCategory.error != null
                      ? 'Try again'
                      : "Add",
                );
              },
            ),
            sized0hx20,
          ],
        ),
      ),
    );
  }
}
