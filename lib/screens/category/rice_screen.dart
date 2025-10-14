import 'package:flutter/material.dart';
import 'package:pg_pritani/theme/app_colors.dart';
import 'package:pg_pritani/widgets/cards/product_card.dart';

class RiceScreen extends StatelessWidget {
  const RiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beras'),
        backgroundColor: AppColors.background,
      ),
      body: Column(children: [RiceCard()]),
    );
  }
}
