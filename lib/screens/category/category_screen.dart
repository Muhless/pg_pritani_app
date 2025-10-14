import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pg_pritani/theme/app_colors.dart';
import 'package:pg_pritani/widgets/cards/category_product.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        'id': '1',
        'image': 'assets/images/rice.png',
        'title': "Beras",
        'subtitle': 'Beras',
        'route': '/category/rice',
      },
      {
        'id': '2',
        'image': 'assets/images/bran.png',
        'title': "Dedak",
        'subtitle': 'Dedak Halus',
        'route': '/category/bran',
      },
      {
        'id': '3',
        'image': 'assets/images/oat.png',
        'title': "Sekam",
        'subtitle': 'sekampung xixixi',
        'route': '/category/husk',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Produk Kami"),
        centerTitle: true,
        backgroundColor: AppColors.background,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: products.length,
            separatorBuilder: (_, __) => SizedBox(height: 10.h),
            itemBuilder: (context, index) {
              final p = products[index];
              return CategoryProduct(
                image: p['image']!,
                title: p['title']!,
                subTitle: p['subtitle']!,
                onTap: () {
                  context.push(p['route']!);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
