import 'package:flutter/material.dart';

import '../../../core/consts.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "You Can Also like",
          style: Styles.textStyle18,
        ),
      ),
    );
  }
}
