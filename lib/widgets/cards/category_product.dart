import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pg_pritani/theme/app_colors.dart';

class CategoryProduct extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final VoidCallback? onTap;

  const CategoryProduct({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30.sp,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(color: Colors.grey[100], fontSize: 18.sp),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(
                image,
                width: 150.w,
                height: 100.h,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
