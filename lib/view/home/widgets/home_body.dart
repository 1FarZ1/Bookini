import 'package:bookini/core/consts.dart';
import 'package:flutter/material.dart';

import '../home.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomListView(),
          Text(
            "Best Seller",
            style: Styles.textStyle18,
          )
        ],
      ),
    );
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .35,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
                // width: MediaQuery.of(context).size.width * .55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    image: const DecorationImage(
                        image: AssetImage(AssetsData.testImage),
                        fit: BoxFit.fill))),
          );
        },
      ),
    );
  }
}
