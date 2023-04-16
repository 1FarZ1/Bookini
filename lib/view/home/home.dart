import 'package:flutter/material.dart';
import '../common/custom_app_bar.dart';
import 'widgets/home_body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(appBar: CustomAppBar(), body: HomeBody()));
  }
}
