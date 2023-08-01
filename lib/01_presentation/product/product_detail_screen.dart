// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';


// class ProductDetailScreen extends StatelessWidget {
//   final int productIndex;
//   const ProductDetailScreen({super.key, required this.productIndex});

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(),
//       body: BlocBuilder<CategoryBloc, CategoryState>(
//         builder: (context, state) {
//           ProductListData? product = state.productList?[productIndex];
//           return Padding(
//             padding: EdgeInsets.symmetric(horizontal: 15.w),
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   sized0hx10,
//                   // WATextContainer(
//                   //   containerText: "See More Fresho products",
//                   //   containerColor: Colors.green.shade100,
//                   //   textColor: Colors.black,
//                   //   fontSize: 11.sp,
//                   // ),
//                   // sized0hx05,
//                   HeadingSection(
//                     product: product,
//                   ),
//                   sized0hx05,
//                   Center(
//                     child: SizedBox(
//                       height: size.height * .3,
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: Image.network(
//                           product?.productImage ?? "",
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                   ),
//                   sized0hx10,
//                   // SizedBox(
//                   //   height: 50.h,
//                   //   child: ListView.separated(
//                   //     itemCount: 4,
//                   //     scrollDirection: Axis.horizontal,
//                   //     separatorBuilder: (context, index) {
//                   //       return sized0wx05;
//                   //     },
//                   //     itemBuilder: (context, index) {
//                   //       return Container(
//                   //         height: 50.h,
//                   //         width: 50.h,
//                   //         decoration: BoxDecoration(
//                   //             border: Border.all(color: Colors.black12),
//                   //             borderRadius: BorderRadius.circular(10)),
//                   //         child: ClipRRect(
//                   //           borderRadius: BorderRadius.circular(10),
//                   //           child: Image.network(
//                   //             "https://media.istockphoto.com/id/965291674/photo/close-up-of-bowls-filled-with-a-large-selection-of-crocodiles-soft-candies.webp?b=1&s=170667a&w=0&k=20&c=Hyqoq03ZUFtF3rvG9YE6BoLOQhg1HhEeESQpxTqKzX4=",
//                   //             fit: BoxFit.cover,
//                   //           ),
//                   //         ),
//                   //       );
//                   //     },
//                   //   ),
//                   // ),
//                   sized0hx05,
//                   const Divider(),
//                   WAText(
//                     text: "Pack Sizes",
//                     fontSize: 16.sp,
//                   ),
//                   sized0hx05,
//                   PackContainer(
//                     // offerPercent: "34% OFF",
//                     actualPrice: product?.salesDetails?.unitPrice,
//                     // offerPrice: "Rs 119",
//                     packSize: "100 g", index: productIndex,
//                   ),
//                   // sized0hx05,
//                   // PackContainer(
//                   //   offerPercent: "34% OFF",
//                   //   actualPrice: "MRP:Rs 179.17",
//                   //   offerPrice: "Rs 119",
//                   //   packSize: "5kg",
//                   // ),
//                   sized0hx05,
//                   ColoredBox(
//                     color: Colors.grey.shade400,
//                     child: SizedBox(
//                       height: 3.h,
//                       width: double.maxFinite,
//                     ),
//                   ),
//                   sized0hx05,
//                   // WAText(
//                   //   text: "About this product",
//                   //   fontSize: 18,
//                   // ),
//                   // sized0hx05,
//                   const Divider(),
//                   sized0hx05,
//                   HeadingDescriptionTile(
//                     heading: "About the Product",
//                     description: product?.description ?? "",
//                   ),
//                   sized0hx05,
//                   // HeadingDescriptionTile(
//                   //   heading: "Benefits",
//                   //   description:
//                   //       "Oninons are rich an dthey are pure and etc.This is the best off all",
//                   // ),
//                   // sized0hx05,
//                   // HeadingDescriptionTile(
//                   //   heading: "Storage and Users",
//                   //   description:
//                   //       "Oninons are rich an dthey are pure and etc.This is the best off all",
//                   // ),
//                   // sized0hx05,
//                   // HeadingDescriptionTile(
//                   //   heading: "Other Product Info",
//                   //   description:
//                   //       "Oninons are rich an dthey are pure and etc.This is the best off all",
//                   // ),
//                   // sized0hx50
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//       // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       // floatingActionButton: Padding(
//       //   padding: const EdgeInsets.all(0.0),
//       //   child: Row(
//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     children: <Widget>[
//       //       // Expanded(
//       //       //   child: SizedBox(
//       //       //     height: 50.h,
//       //       //     child: FloatingActionButton.extended(
//       //       //       label: Row(
//       //       //         children: [
//       //       //           Icon(Icons.save),
//       //       //           sized0hx05,
//       //       //           WAText(text: "SAVE FOR LATER")
//       //       //         ],
//       //       //       ),
//       //       //       backgroundColor: Colors.black38,
//       //       //       heroTag: "btn",
//       //       //       shape: RoundedRectangleBorder(
//       //       //           borderRadius: BorderRadius.circular(0)),
//       //       //       onPressed: () => {},
//       //       //       // child: Icon(Icons.play_arrow),
//       //       //     ),
//       //       //   ),
//       //       // ),
//       //       // SizedBox(
//       //       //   width: 40,
//       //       // ),
//       //       Expanded(
//       //         child: Padding(
//       //           padding: const EdgeInsets.symmetric(horizontal: 10),
//       //           child: SizedBox(
//       //             height: 50.h,
//       //             child: FloatingActionButton.extended(
//       //               backgroundColor: cButtonColor,
//       //               heroTag: "btn2",
//       //               label: Row(
//       //                 children: [
//       //                   const Icon(Icons.backpack),
//       //                   sized0hx05,
//       //                   const WAText(text: "ADD TO CART")
//       //                 ],
//       //               ),
//       //               shape: RoundedRectangleBorder(
//       //                   borderRadius: BorderRadius.circular(10)),
//       //               onPressed: () => () {},
//       //               // child: Icon(Icons.stop),
//       //             ),
//       //           ),
//       //         ),
//       //       )
//       //     ],
//       //   ),
//       // )
//     );
//   }
// }

// class HeadingSection extends StatelessWidget {
//   const HeadingSection({
//     super.key,
//     this.product,
//   });
//   final ProductListData? product;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         WAText(
//           text: product?.name ?? "",
//           fontSize: 17,
//         ),
//         sized0hx05,
//         Row(
//           children: [
//             WAText(
//               text: "\$${product?.salesDetails?.unitPrice}",
//               fontSize: 12.sp,
//             ),
//             // sized0wx05,
//             // WAText(
//             //   text: "(\$27.73/kg)",
//             //   fontColor: Colors.grey,
//             //   fontSize: 12.sp,
//             // ),
//             // sized0wx05,
//             // WAText(
//             //   text: "MRP: Rs 179.17",
//             //   fontColor: Colors.grey,
//             //   fontSize: 12.sp,
//             // ),
//             // sized0wx05,
//             // WATextContainer(
//             //   containerText: "24% OFF",
//             //   containerColor: cButtonColor,
//             //   paddingVertical: 1.h,
//             //   paddingHorizontal: 7.w,
//             // )
//           ],
//         ),
//         // const WAText(
//         //   text: "(Inclusive of all taxes)",
//         //   fontSize: 12,
//         //   fontColor: Colors.grey,
//         // ),
//       ],
//     );
//   }
// }

// class HeadingDescriptionTile extends StatelessWidget {
//   final String? heading;
//   final String? description;
//   const HeadingDescriptionTile({
//     super.key,
//     this.heading,
//     this.description,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         WAText(
//           text: heading ?? "",
//           fontSize: 16.sp,
//           fontColor: Colors.grey,
//         ),
//         sized0hx10,
//         Padding(
//           padding: EdgeInsets.only(left: 20.w),
//           child: WAText(
//             text: description ?? "",
//             fontColor: Colors.grey,
//             maxLine: 5,
//           ),
//         ),
//         const Divider(),
//       ],
//     );
//   }
// }

// class PackContainer extends StatelessWidget {
//   final int index;
//   final String? packSize;
//   final String? offerPrice;
//   final String? actualPrice;
//   final String? offerPercent;
//   PackContainer({
//     super.key,
//     this.packSize,
//     this.offerPrice,
//     this.actualPrice,
//     this.offerPercent,
//     required this.index,
//   });

//   TextEditingController quantityCtr = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CategoryBloc, CategoryState>(
//       builder: (context, state) {
//         double price = double.parse(actualPrice!);
//         final actPrice = ((state.productList?[index].productCount)! * price);

//         return Container(
//           height: 70.h,
//           width: double.maxFinite,
//           decoration: BoxDecoration(
//               border: Border.all(color: Colors.black12),
//               borderRadius: BorderRadius.circular(10.r)),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               WATextContainer(
//                 containerText: offerPercent ?? "",
//                 fontSize: 10.sp,
//                 containerColor: cButtonColor,
//                 paddingHorizontal: 5,
//                 paddingVertical: 3,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 10.w, top: 10.h),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     // WAText(text: packSize ?? ""),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         // WAText(text: offerPrice ?? ""),
//                         WAText(text: "\$$actPrice")
//                       ],
//                     ),
//                     const Spacer(),
//                     state.productList?[index] != null &&
//                             state.productList![index].productCount > 0
//                         ? IncDecItem(index: index)
//                         : Align(
//                             alignment: Alignment.centerRight,
//                             child: WAButton(
//                               padding: 5,
//                               width: 80.w,
//                               height: 30.h,
//                               fontSize: 14.sp,
//                               buttonText: "Add",
//                               textColor: Colors.white,
//                               buttonColor: cButtonColor,
//                               loading: state.addLoadingIndex != null &&
//                                   state.addLoadingIndex == index,
//                               onPressed: () {
//                                 context.read<CategoryBloc>().add(
//                                       CategoryEvent.incrementItem(
//                                         index: index,
//                                         product: state.productList?[index],
//                                       ),
//                                     );
//                               },
//                             ),
//                           ),
//                     sized0wx10
//                     // Radio(value: "", groupValue: "", onChanged: (value) {})
//                   ],
//                 ),
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
