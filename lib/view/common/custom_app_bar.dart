import 'package:flutter/material.dart';

import '../../core/consts.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20, right: 30, left: 30),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                // GoRouter.of(context).push(AppRouter.kSearchView);
              },
              icon: IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 22,
                ),
                onPressed: () {},
              ))
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
