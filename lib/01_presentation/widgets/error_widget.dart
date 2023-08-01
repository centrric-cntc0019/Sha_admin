import 'package:flutter/cupertino.dart';
import 'package:sha_admin/01_presentation/widgets/wa_text.dart';

import '../../05_core/failure/main_failure.dart';

class CustomErrorWidget extends StatelessWidget {
  final MainFailure? mainFailure;
  const CustomErrorWidget({super.key, this.mainFailure});

  @override
  Widget build(BuildContext context) {
    if (mainFailure == const MainFailure.clientFailure()) {
      return const Center(child: WAText(text: "client failure"));
    } else if (mainFailure == const MainFailure.networkFailure()) {
      return const Center(child: WAText(text: "network failure"));
    } else if (mainFailure == const MainFailure.serverFailure()) {
      return const Center(child: WAText(text: "server failure"));
    } else {
      return const Center(child: WAText(text: "timeout"));
    }
  }
}
