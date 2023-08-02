import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sha_admin/01_presentation/product/widgets/picker_image_widget.dart';

import '../../widgets/wa_text.dart';
import '../../widgets/wa_button.dart';
import '../../../05_core/utils/constant.dart';
import '../../../03_domain/di/injection.dart';
import '../../../05_core/services/image_picker.dart';
import '../../../02_application/product/product_bloc.dart';
import '../../../02_application/category/category_bloc.dart';
import '../../../03_domain/products/models/product/product_base_model.dart';
import '../../../03_domain/category/models/category_list/category_model.dart';
import '../../../03_domain/category/models/category_list/category_base_model.dart';

class ProductUpdateSheet extends StatefulWidget {
  const ProductUpdateSheet({
    super.key,
    required this.product,
  });

  final ProductData product;

  @override
  State<ProductUpdateSheet> createState() => _ProductUpdateSheetState();
}

class _ProductUpdateSheetState extends State<ProductUpdateSheet> {
  CategoryModel? selectedCategory;
  late CategoryBloc bloc;
  late ProductBloc productBloc;

  List<CategoryModel>? categoryList;
  @override
  void initState() {
    bloc = context.read<CategoryBloc>();
    productBloc = context.read<ProductBloc>();
    CategoryBaseModel? categoryBaseModel =
        bloc.state.result.data as CategoryBaseModel?;
    categoryList = categoryBaseModel?.data ?? [];
    int? index = categoryList?.indexWhere(
        (element) => element.id == widget.product.productCategory?.uuid);
    if (index != null && index != -1) {
      selectedCategory = categoryList![index];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WAText(
            fontSize: 20.sp,
            text: "${widget.product.name}",
            fontWeight: FontWeight.w700,
          ),
          sized0hx10,
          Align(
            alignment: Alignment.center,
            child: BlocBuilder<ProductBloc, ProductState>(
              buildWhen: (previous, current) =>
                  previous.productImage != current.productImage,
              builder: (context, state) {
                return InkWell(
                  onTap: () async {
                    ImagePickerModel? image =
                        await getIt<ImagePickerService>().imagePicker(context);
                    if (image != null) {
                      productBloc
                          .add(ProductEvent.pickProductImage(image: image));
                    }
                  },
                  child: PickImageWidget(
                    productImage: state.productImage?.imagePath,
                    netWorkImage: widget.product.productImageThumb ??
                        widget.product.productImage,
                  ),
                );
              },
            ),
          ),
          sized0hx20,
          WAText(
            fontSize: 20.sp,
            text: "Select Category",
            fontWeight: FontWeight.w500,
          ),
          sized0hx10,
          DropdownButton<CategoryModel>(
            isExpanded: true,
            hint: const Text("Select Category"),
            value: selectedCategory,
            items: categoryList?.map((CategoryModel value) {
              return DropdownMenuItem<CategoryModel>(
                value: value,
                child: Text(value.categoryName ?? ""),
              );
            }).toList(),
            onChanged: (cat) {
              selectedCategory = cat;
              setState(() {});
            },
          ),
          sized0hx40,
          WAButton(
            onPressed: () {
              if (selectedCategory != null ||
                  productBloc.state.productImage != null) {
                productBloc.add(
                  ProductEvent.editProduct(
                    context: context,
                    productUuid: widget.product.uuid!,
                    categoryUuid: selectedCategory?.id,
                  ),
                );
              }
            },
            buttonText: "Update",
            loading: context.select(
              (ProductBloc bloc) => bloc.state.editProductRes.loading == true,
            ),
          )
        ],
      ),
    );
  }
}
