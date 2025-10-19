import 'package:faker/faker.dart' hide Image;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailProductCard extends StatelessWidget {
  const DetailProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    return DefaultTextStyle(
      style: TextStyle(color: Colors.black),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/rice.png'),
          SizedBox(height: 5.h),
          Center(
            child: Text(
              'Nama Produk',
              style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            'Deskripsi',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.h),
          Text(
            faker.lorem.sentences(3).join(' '),
            style: TextStyle(fontSize: 14.sp, height: 1.4.h),
          ),
        ],
      ),
    );
  }
}
