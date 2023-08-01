// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../05_core/utils/themes.dart';

// enum IncDecType { fromprodList, fromCart }

// class ProductItem extends StatelessWidget {
//   const ProductItem({
//     super.key,
//     required this.index,
//     required this.size,
//   });

//   final Size size;
//   final int index;

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CategoryBloc, CategoryState>(
//       buildWhen: (previous, current) {
//         return previous.addLoadingIndex != current.addLoadingIndex;
//       },
//       builder: (context, state) {
//         final data = state.productList?[index];
//         return Container(
//           padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(
//                 height: 100.h,
//                 width: (size.width * .25),
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Center(
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: Image.network(
//                           data?.productImage ?? "",
//                           height: 100,
//                           width: 100,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 10),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       WAText(
//                         text: data?.name ?? "",
//                         fontWeight: FontWeight.w500,
//                         fontSize: 16.sp,
//                       ),
//                       // sized0hx05,
//                       // WAText(
//                       //   text: "Available quantity : ${data?.quantityOnHand}",
//                       //   fontWeight: FontWeight.w400,
//                       //   fontSize: 15.sp,
//                       // ),
//                       sized0hx05,
//                       Row(
//                         children: [
//                           WAText(
//                             text: "\$${data?.salesDetails?.unitPrice}",
//                             fontWeight: FontWeight.w700,
//                             fontSize: 15.sp,
//                           ),
//                           sized0wx05,
//                         ],
//                       ),
//                       sized0hx05,
//                       data?.productCount != null && data!.productCount > 0
//                           ? Row(
//                               children: [
//                                 const Spacer(),
//                                 IncDecItem(
//                                   index: index,
//                                   incDecType: IncDecType.fromprodList,
//                                 ),
//                               ],
//                             )
//                           : Align(
//                               alignment: Alignment.centerRight,
//                               child: WAButton(
//                                 padding: 5,
//                                 width: 80.w,
//                                 height: 30.h,
//                                 fontSize: 14.sp,
//                                 buttonText: "Add",
//                                 textColor: Colors.white,
//                                 buttonColor: cButtonColor,
//                                 loading: state.addLoadingIndex != null &&
//                                     state.addLoadingIndex == index,
//                                 onPressed: () {
//                                   context.read<CategoryBloc>().add(
//                                         CategoryEvent.incrementItem(
//                                           index: index,
//                                           product: data,
//                                         ),
//                                       );
//                                 },
//                               ),
//                             )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// class IncDecItem extends StatelessWidget {
//   final int index;
//   final IncDecType? incDecType;
//   const IncDecItem({
//     super.key,
//     this.incDecType,
//     required this.index,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CategoryBloc, CategoryState>(
//       buildWhen: (previous, current) {
//         return previous.addLoadingIndex != current.addLoadingIndex;
//       },
//       builder: (context, state) {
//         return Container(
//           decoration: BoxDecoration(
//               border: Border.all(color: cButtonColor, width: 1.5),
//               borderRadius: BorderRadius.circular(5),
//               color: cWhite),
//           child: Row(
//             children: [
//               InkWell(
//                 onTap: () {
//                   // Add only after loading completed
//                   if (state.addLoadingIndex == null) {
//                     context.read<CategoryBloc>().add(
//                           CategoryEvent.decrementItem(
//                             index: index,
//                             isFromCart: incDecType == IncDecType.fromCart
//                                 ? true
//                                 : false,
//                             product: incDecType == IncDecType.fromCart
//                                 ? state.cartList[index].product
//                                 : state.productList?[index],
//                           ),
//                         );
//                   }
//                 },
//                 child: Container(
//                   width: 30.w,
//                   height: 27.h,
//                   alignment: Alignment.center,
//                   child: const Icon(Icons.remove),
//                 ),
//               ),
//               Container(
//                 width: 30.w,
//                 height: 27.h,
//                 color: cButtonColor,
//                 padding: const EdgeInsets.all(2),
//                 alignment: Alignment.center,
//                 child: state.addLoadingIndex != null &&
//                         state.addLoadingIndex == index
//                     ? const Padding(
//                         padding: EdgeInsets.all(3.0),
//                         child: CircularProgressIndicator(),
//                       )
//                     : Text(
//                         incDecType == IncDecType.fromCart
//                             ? "${state.cartList[index].noOfItems}"
//                             : state.productList?[index].productCount
//                                     .toString() ??
//                                 "",
//                       ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   // Add only after loading completed
//                   if (state.addLoadingIndex == null) {
//                     context.read<CategoryBloc>().add(
//                           CategoryEvent.incrementItem(
//                             index: index,
//                             isFromCart: incDecType == IncDecType.fromCart
//                                 ? true
//                                 : false,
//                             product: incDecType == IncDecType.fromCart
//                                 ? state.cartList[index].product
//                                 : state.productList?[index],
//                           ),
//                         );
//                   }
//                 },
//                 child: Container(
//                   width: 30.w,
//                   height: 27.h,
//                   alignment: Alignment.center,
//                   child: const Icon(Icons.add),
//                 ),
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
