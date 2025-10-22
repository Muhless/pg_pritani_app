import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pg_pritani/widgets/cards/detail_product_card.dart';

class DetailProductScreen extends StatelessWidget {
  const DetailProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Produk')),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: DetailProductCard(),
        ),
      ),
    );
  }
}
