// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class QuoteInvoiceCard extends StatelessWidget {
//   final MyCartList? quotesList;
//   const QuoteInvoiceCard({
//     super.key,
//     this.quotesList,
//   });

//   @override
//   Widget build(BuildContext context) {
//     String? formattedDate;
//     if (quotesList?.quoteCreatedDate != null) {
//       final DateFormat formatter = DateFormat('dd-MMM-yyyy');
//       DateTime dateTime = DateFormat("yyyy-MM-ddTHH:mm:ss.SSSZ")
//           .parse(quotesList!.quoteCreatedDate!);
//       formattedDate = formatter.format(dateTime);
//     }

//     return Card(
//       child: ListTile(
//         title: WAText(
//           text: "\$${quotesList?.xeroQuoteData?.total.toString()}",
//           fontSize: 15.sp,
//           fontWeight: FontWeight.w500,
//         ),
//         subtitle: WAText(
//           text: quotesList?.xeroQuoteNumber ?? "",
//           fontSize: 11.sp,
//         ),
//         trailing: Column(
//           children: [
//             WAText(
//               text: formattedDate ?? "",
//               fontSize: 12.sp,
//             ),
//             sized0hx05,
//             Container(
//               padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//               decoration: BoxDecoration(
//                   color: quotesList?.status == "SENT"
//                       ? Colors.blue
//                       : quotesList?.status == "ACCEPTED"
//                           ? Colors.green
//                           : quotesList?.status == "DECLINED"
//                               ? Colors.red
//                               : Theme.of(context).primaryColor.withOpacity(.5),
//                   borderRadius: BorderRadius.circular(10)),
//               child: WAText(
//                 text: quotesList?.status == "SENT"
//                     ? "Updated"
//                     : quotesList?.status == "ACCEPTED"
//                         ? "Accepted"
//                         : quotesList?.status == "DECLINED"
//                             ? "Rejected"
//                             : "Requested",
//                 fontSize: 11.sp,
//                 fontColor: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
