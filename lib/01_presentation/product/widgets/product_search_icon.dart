import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../02_application/product/product_bloc.dart';

class ProductSearchIcon extends StatelessWidget {
  const ProductSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<ProductBloc>().add(
              const ProductEvent.searchBarVisibility(),
            );
      },
      icon: Icon(
        Icons.search,
        color: context
                .select((ProductBloc bloc) => bloc.state.searchEnabled == true)
            ? Colors.pink
            : Colors.white,
      ),
    );
  }
}
