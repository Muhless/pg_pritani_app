import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pg_pritani/theme/app_colors.dart';

class Stockrow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const Stockrow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(16.r),
      ),
      padding: EdgeInsets.all(10.r),
      margin: EdgeInsets.symmetric(vertical: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, size: 20.sp, color: Colors.white),
              SizedBox(width: 4.h),
              Text(
                label,
                style: TextStyle(fontSize: 14.sp, color: Colors.white),
              ),
            ],
          ),
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
