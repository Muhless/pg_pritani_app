import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pg_pritani/widgets/button/cart_button.dart';
import 'package:pg_pritani/widgets/cards/detail_product_card.dart';
import 'package:pg_pritani/widgets/info/quantity_selector.dart';
import 'package:pg_pritani/widgets/info/review_product.dart';

class DetailProductScreen extends StatelessWidget {
  const DetailProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Produk')),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.all(16.r),
          child: Column(
            children: [
              DetailProductCard(),
              SizedBox(height: 10.h),
              QuantitySelector(),
              SizedBox(height: 10.h),
              CartButton(),
              SizedBox(height: 40.h),

              ReviewProduct(),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
