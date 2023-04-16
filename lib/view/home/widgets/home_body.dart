import 'package:bookini/core/consts.dart';
import 'package:flutter/material.dart';

import '../home.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomListView();
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .35,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
            // width: MediaQuery.of(context).size.width * .55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                    fit: BoxFit.fill))),
      ),
    );
  }
}
