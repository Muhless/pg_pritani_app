import 'package:faker/faker.dart' hide Image;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pg_pritani/theme/app_colors.dart';

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
              'Beras Pandan Wangi Premium',
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
          ),
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
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              minimumSize: Size(double.infinity, 50.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.local_grocery_store,
                  color: AppColors.text,
                  size: 20.sp,
                ),
                SizedBox(width: 10.w),
                Text(
                  'Tambah Ke Keranjang',
                  style: TextStyle(color: AppColors.text, fontSize: 15.sp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
