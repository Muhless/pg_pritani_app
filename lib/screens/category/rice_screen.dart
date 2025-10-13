import 'package:flutter/material.dart';
import 'package:pg_pritani/widgets/cards/rice_card.dart';

class RiceScreen extends StatelessWidget {
  const RiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ini Halaman Beras')),
      body: Column(children: [RiceCard()]),
    );
  }
}
