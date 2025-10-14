import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pg_pritani/theme/app_colors.dart';

class RiceCard extends StatelessWidget {
  const RiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: AppColors.primary,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(10.r),
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    image: DecorationImage(
                      image: AssetImage('assets/images/1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Beras Ketan',
                          style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w600,
                            height: 1.0,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          'Stok :',
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.grey[300],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 5.h,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.yellow[500],
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: Text(
                            'Tersedia',
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                // TODO: add button
              ],
            ),
          ],
        ),
      ),
    );
  }
}
