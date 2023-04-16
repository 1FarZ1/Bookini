

import 'package:flutter/material.dart';

import '../../../core/consts.dart';

class BestSellerBookCard extends StatelessWidget {
  const BestSellerBookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 3.2 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: const DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.height * .25,
                  child: Text(
                    "Harry Potter and the Goblet of Fire",
                    style: Styles.textStyle20
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  "JK Rowling",
                  style: Styles.textStyle14,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "19,19 \$ ",
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.star, color: Colors.yellow),
                        SizedBox(
                          width: 1,
                        ),
                        Text("4.5"),
                        SizedBox(
                          width: 4,
                        ),
                        Text("(100)"),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
