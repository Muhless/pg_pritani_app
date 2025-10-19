import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pg_pritani/widgets/cards/product_card.dart';
import 'package:pg_pritani/widgets/search_field.dart';

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
        'route': '/product/detail',
      },
      {
        'id': '2',
        'image': 'assets/images/bran.png',
        'title': "Beras 2",
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
      {
        'id': '3',
        'image': 'assets/images/oat.png',
        'title': "Sekam",
        'subtitle': 'sekampung xixixi',
        'route': '/category/husk',
      },
      {
        'id': '3',
        'image': 'assets/images/oat.png',
        'title': "Sekam",
        'subtitle': 'sekampung xixixi',
        'route': '/category/husk',
      },
      {
        'id': '3',
        'image': 'assets/images/oat.png',
        'title': "Sekam",
        'subtitle': 'sekampung xixixi',
        'route': '/category/husk',
      },

      {
        'id': '3',
        'image': 'assets/images/oat.png',
        'title': "Sekam",
        'subtitle': 'sekampung xixixi',
        'route': '/category/husk',
      },
      {
        'id': '3',
        'image': 'assets/images/oat.png',
        'title': "Sekam",
        'subtitle': 'sekampung xixixi',
        'route': '/category/husk',
      },
      {
        'id': '3',
        'image': 'assets/images/oat.png',
        'title': "Sekam",
        'subtitle': 'sekampung xixixi',
        'route': '/category/husk',
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
        // actions: [IconButton(icon: const Icon(Icons.search), onPressed: () {})],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              SearchField(),
              SizedBox(height: 10.h),
              Expanded(
                child: ListView.separated(
                  itemCount: products.length,
                  separatorBuilder: (_, __) => SizedBox(height: 10.h),
                  itemBuilder: (context, index) {
                    final p = products[index];
                    return ProductCard(
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
            ],
          ),
        ),
      ),
    );
  }
}
