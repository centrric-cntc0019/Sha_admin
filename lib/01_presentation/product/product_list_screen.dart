// import 'dart:async';

// import 'package:flutter/material.dart';
// import '../widgets/search_bar_field.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class ProductListScreen extends StatefulWidget {
//   final Map headText;
//   const ProductListScreen({super.key, required this.headText});

//   @override
//   State<ProductListScreen> createState() => _ProductListScreenState();
// }

// class _ProductListScreenState extends State<ProductListScreen> {
//   Timer? _debounce;
//   late TextEditingController searchCtr;

//   @override
//   void initState() {
//     searchCtr = TextEditingController();
//     final state = context.read<CategoryBloc>().state;
//     if (state.searchEnabled == true) {
//       context
//           .read<CategoryBloc>()
//           .add(const CategoryEvent.searchBarVisibility());
//     }
//     super.initState();
//   }

//   @override
//   void dispose() {
//     searchCtr.dispose();
//     _debounce?.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: cWhite,
//       appBar: AppBar(
//         // centerTitle: true,
//         title: WAText(
//           text: widget.headText['category_name'],
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {
//               context.read<CategoryBloc>().add(
//                     const CategoryEvent.searchBarVisibility(),
//                   );
//             },
//             icon: Icon(
//               Icons.search,
//               color: context.select(
//                       (CategoryBloc bloc) => bloc.state.searchEnabled == true)
//                   ? Colors.pink
//                   : Colors.white,
//             ),
//           ),
//           sized0wx20,
//           GestureDetector(
//               onTap: () {
//                 Navigator.of(context).pushAndRemoveUntil(
//                   MaterialPageRoute(
//                     builder: (context) => MainScreen(
//                       passedIndex: 3,
//                     ),
//                   ),
//                   (route) => false,
//                 );
//               },
//               child: const Icon(Icons.shopping_bag)),
//           sized0wx20,
//         ],
//       ),
//       body: BlocBuilder<CategoryBloc, CategoryState>(
//         buildWhen: (previous, current) {
//           return previous.isLoading != current.isLoading ||
//               previous.productList != current.productList;
//         },
//         builder: (context, state) {
//           return state.isLoading
//               ? const ProductListShimmer()
//               : Stack(
//                   children: [
//                     Row(
//                       children: [
//                         Expanded(
//                           child: RefreshIndicator(
//                             onRefresh: () async {
//                               searchCtr.clear();
//                               context.read<CategoryBloc>().add(
//                                     CategoryEvent.getProductListByCategory(
//                                       categoryId: state.categoryId,
//                                     ),
//                                   );
//                             },
//                             child: CustomScrollView(
//                               slivers: [
//                                 if (context.select((CategoryBloc bloc) =>
//                                     bloc.state.searchEnabled == true)) ...[
//                                   SliverToBoxAdapter(
//                                     child: SearchBarField(
//                                       ctr: searchCtr,
//                                       clearField: () {
//                                         if (searchCtr.text.isNotEmpty) {
//                                           context.read<CategoryBloc>().add(
//                                                 CategoryEvent
//                                                     .getProductListByCategory(
//                                                   searchKey: "",
//                                                   categoryId: state.categoryId,
//                                                 ),
//                                               );
//                                         }
//                                       },
//                                       onChanged: (String data) {
//                                         if (_debounce?.isActive ?? false) {
//                                           _debounce?.cancel();
//                                         }
//                                         _debounce = Timer(
//                                           const Duration(milliseconds: 350),
//                                           () {
//                                             context.read<CategoryBloc>().add(
//                                                   CategoryEvent
//                                                       .getProductListByCategory(
//                                                     searchKey: searchCtr.text,
//                                                     categoryId:
//                                                         state.categoryId,
//                                                   ),
//                                                 );
//                                           },
//                                         );
//                                       },
//                                     ),
//                                   )
//                                 ],
//                                 const SliverToBoxAdapter(
//                                   child: ProductListCarousel(),
//                                 ),
//                                 SliverList(
//                                   delegate: SliverChildListDelegate(
//                                     [
//                                       ProductListHeading(
//                                           count:
//                                               state.productList?.length ?? 0),
//                                       // state.error
//                                       //     ? Padding(
//                                       //         padding:
//                                       //             EdgeInsets.only(top: 80.h),
//                                       //         child: const WAText(
//                                       //           text: "Error occurs",
//                                       //           textAlign: TextAlign.center,
//                                       //         ),
//                                       //       )
//                                       //     :
//                                       state.productListFailure != null
//                                           ? CustomErrorWidget(
//                                               mainFailure:
//                                                   state.productListFailure,
//                                             )
//                                           : state.productList == null ||
//                                                   state.productList!.isEmpty
//                                               ? Padding(
//                                                   padding: EdgeInsets.only(
//                                                       top: 80.h),
//                                                   child: const WAText(
//                                                     text: "No products found",
//                                                     textAlign: TextAlign.center,
//                                                   ),
//                                                 )
//                                               : ListView.separated(
//                                                   shrinkWrap: true,
//                                                   physics:
//                                                       const ScrollPhysics(),
//                                                   itemCount: state.productList
//                                                           ?.length ??
//                                                       0,
//                                                   separatorBuilder:
//                                                       (context, index) {
//                                                     return const Divider();
//                                                   },
//                                                   itemBuilder:
//                                                       (context, index) {
//                                                     return GestureDetector(
//                                                       onTap: () {
//                                                         Navigator.of(context)
//                                                             .pushNamed(
//                                                           RouteNames
//                                                               .productDetailScreen,
//                                                           arguments: {
//                                                             "index_of_product": state
//                                                                         .productList !=
//                                                                     null
//                                                                 ? state
//                                                                     .productList!
//                                                                     .indexOf(state
//                                                                             .productList![
//                                                                         index])
//                                                                 : null
//                                                           },
//                                                         );
//                                                       },
//                                                       child: ProductItem(
//                                                         index: index,
//                                                         size: size,
//                                                       ),
//                                                     );
//                                                   },
//                                                 ),
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 );
//         },
//       ),
//     );
//   }
// }
