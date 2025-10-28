import 'package:faker/faker.dart' hide Image;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pg_pritani/theme/app_colors.dart';
import 'package:pg_pritani/widgets/info/rating_product.dart';

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
          Image.asset(
            'assets/images/bran.png',
            width: double.infinity,
            height: 180.h,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10.h),
          Center(
            child: Text(
              'Beras Pandan Wangi Premium',
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5.h),
          RatingProduct(),
          SizedBox(height: 5.h),

          Center(
            child: Text(
              'Rp 15.000 / Kg',
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.green[700],
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 5.h),

          Text(
            faker.lorem.sentences(3).join(' '),
            style: TextStyle(fontSize: 14.sp, height: 1.4.h),
          ),
          SizedBox(height: 10.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Stok Tersedia',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Text(
                  '140 Kg',
                  style: TextStyle(color: Colors.white, fontSize: 15.sp),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
