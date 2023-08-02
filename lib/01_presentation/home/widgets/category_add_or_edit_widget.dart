import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sha_admin/03_domain/di/injection.dart';

import '../../../02_application/category/category_bloc.dart';
import '../../../05_core/services/image_picker.dart';
import '../../widgets/wa_text.dart';
import '../../widgets/wa_button.dart';
import '../../widgets/wa_text_field.dart';
import '../../../05_core/utils/constant.dart';

class CategoryAddOrEditWidget extends StatelessWidget {
  final String title;
  final bool addCategory;
  final Function() onTap;
  final TextEditingController ctr;
  final GlobalKey<FormState> formKey;
  const CategoryAddOrEditWidget({
    super.key,
    required this.ctr,
    required this.title,
    required this.onTap,
    required this.formKey,
    this.addCategory = true,
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
              text: title,
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
                            width: 80.w,
                            height: 70.h,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: state.categoryImage != null
                                ? Image.file(
                                    File(state.categoryImage!.imagePath!),
                                    fit: BoxFit.cover,
                                  )
                                : const Icon(
                                    Icons.add,
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
              borderColor: Colors.black,
              hintText: "Enter category name",
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return "Please enter category name";
                }
                return null;
              },
            ),
            sized0hx40,
            WAButton(
              onPressed: () {
                if (formKey.currentState?.validate() ?? false) {
                  onTap;
                }
              },
              buttonText: "Add",
            ),
            sized0hx20,
          ],
        ),
      ),
    );
  }
}
