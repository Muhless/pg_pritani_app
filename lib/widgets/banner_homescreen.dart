import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pg_pritani/screens/product_screen.dart';
import 'package:pg_pritani/theme/app_colors.dart';

class HomescreenBanner extends StatelessWidget {
  const HomescreenBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: AppColors.secondary,
      ),
      child: Row(
        children: [
          Image.asset('assets/images/farmer.png', width: 170.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Beras Berkualitas",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                    height: 1.0.h,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Dari Gilingan Terbaik",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.h),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(0, 0),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 10.h,
                      ),
                      textStyle: TextStyle(fontSize: 15.sp),
                    ),
                    child: Text("Pesan Sekarang"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
