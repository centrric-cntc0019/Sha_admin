import 'package:flutter/cupertino.dart';

class PaginationLoadingTile extends StatelessWidget {
  final double? padding;
  const PaginationLoadingTile({
    super.key,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding ?? 20.0),
      child: const CupertinoActivityIndicator(),
    );
  }
}
