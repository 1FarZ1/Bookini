import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({super.key, required this.leading, required this.action});

  final Widget leading;
  final Widget action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20, right: 30, left: 30),
      child: Row(
        children: [
         leading,
          const Spacer(),
          action
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
