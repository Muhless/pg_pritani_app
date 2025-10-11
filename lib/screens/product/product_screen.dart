import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pg_pritani/widgets/cards/category_product.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Produk")),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              CategoryProduct(
                image: 'assets/images/oat.png',
                title: 'Gandum',
                subTitle: 'Gandum utuh dari petani',
                onTap: () {
                  Navigator.pushNamed(context, '/detail-produk');
                },
              ),
              SizedBox(height: 18.h),
              CategoryProduct(
                image: 'assets/images/beras-merah.png',
                title: 'Beras Merah',
                subTitle: 'Beras Merah asli dari petani',
                onTap: () {
                  Navigator.pushNamed(context, '/detail-produk');
                },
              ),
              SizedBox(height: 18.h),
              CategoryProduct(
                image: 'assets/images/dedak-halus.png',
                title: 'Beras Merah',
                subTitle: 'Beras Merah asli dari petani',
                onTap: () {
                  Navigator.pushNamed(context, '/detail-produk');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
