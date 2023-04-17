import 'package:bookini/view/common/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/detaills_body.dart';

class DetaillsView extends StatelessWidget {
  const DetaillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.close,
              size: 30,
            ),
            onPressed: () {},
          ),
          action: IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
        body: const DetaillsBody(),
      ),
    );
  }
}
