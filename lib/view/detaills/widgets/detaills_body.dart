import 'package:bookini/core/consts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common/custom_app_bar.dart';
import 'action_button.dart';
import 'custom_book_card.dart';
import 'custom_title.dart';
import 'rating_box.dart';

class DetaillsBody extends StatelessWidget {
  const DetaillsBody({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: Seperate The Ui into Sections
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomAppBar(
                  leading: IconButton(
                    icon: const Icon(
                      Icons.close,
                      size: 30,
                    ),
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                  ),
                  action: IconButton(
                    icon: const Icon(
                      Icons.shopping_cart,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
                const CustomBookCard(),
                const SizedBox(height: 32),
                Text(
                  "The Book of the Dead",
                  style: Styles.textStyle20.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                const Opacity(
                  opacity: .7,
                  child: Text("JK Rowling", style: Styles.textStyle14),
                ),
                const SizedBox(height: 16),
                const RatingBox(),
                const SizedBox(height: 32),
                const ActionButton(),
                const Expanded(child: SizedBox(height: 32)),
                const CustomTitle(),
                const SizedBox(height: 8),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .2,
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, __) {
                        return const Padding(
                          padding: EdgeInsets.all(6.0),
                          child: CustomBookCard(),
                        );
                      }),
                ),
                const SizedBox(height: 32),
                // create elevated button in flutter for me
              ],
            ),
          ),
        )
      ],
    );
  }
}
