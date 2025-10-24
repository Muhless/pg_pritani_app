import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pg_pritani/theme/app_colors.dart';

class PriceInfo extends StatelessWidget {
  const PriceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Pandan Wangi',
            style: TextStyle(fontSize: 14.sp, color: Colors.black),
          ),
          Column(
            children: [
              Text(
                'Rp 7.800',
                style: TextStyle(color: Colors.black, fontSize: 13.sp),
              ),
              // TODO: If + text color is green, if - text color is red
              Text(
                '+200',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 11.sp,
                  height: 0.7.h,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
