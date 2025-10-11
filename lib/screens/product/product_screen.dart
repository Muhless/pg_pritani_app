import 'package:flutter/material.dart';
import 'package:pg_pritani/widgets/cards/card_product.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Produk")),
      body: SafeArea(
        child: Container(
          child: Column(children: [CardProduct(), CardProduct()]),
        ),
      ),
    );
  }
}
