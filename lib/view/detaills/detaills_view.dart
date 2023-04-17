import 'package:bookini/view/common/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/detaills_body.dart';

class DetaillsView extends StatelessWidget {
  const DetaillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      appBar: CustomAppBar(),
      body: DetaillsBody(),
    );
  }
}
