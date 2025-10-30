import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pg_pritani/widgets/button/payment_button.dart';
import 'package:pg_pritani/widgets/cards/cart_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Keranjang')),
      body: Stack(
        children: [
          /// Konten utama
          SingleChildScrollView(
            padding: EdgeInsets.all(16.r),
            child: Column(
              children: [
                CartCard(),
                SizedBox(height: 10.h),
                CartCard(),
                SizedBox(height: 10.h),
                CartCard(),
                SizedBox(height: 10.h),
                CartCard(),
                SizedBox(height: 10.h),
                CartCard(),
                SizedBox(height: 70.h),
              ],
            ),
          ),

          Positioned(
            left: 16.w,
            right: 16.w,
            bottom: 16.h,
            child: PaymentButton(),
          ),
        ],
      ),
    );
  }
}
