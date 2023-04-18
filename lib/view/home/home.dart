import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/consts.dart';
import '../common/custom_app_bar.dart';
import 'widgets/home_body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
              leading: Image.asset(
                AssetsData.logo,
                height: 18,
              ),
              action: IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 22,
                ),
                onPressed: () {
                  GoRouter.of(context).push("/search");
                },
              ),
            ),
            body: const HomeBody()));
  }
}
