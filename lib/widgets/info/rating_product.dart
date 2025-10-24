import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingProduct extends StatelessWidget {
  const RatingProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star_rate_sharp, color: Colors.yellow[700], size: 18.sp),
        Icon(Icons.star_rate_sharp, color: Colors.yellow[700], size: 18.sp),
        Icon(Icons.star_rate_sharp, color: Colors.yellow[700], size: 18.sp),
        Icon(Icons.star_rate_sharp, color: Colors.yellow[700], size: 18.sp),
        Icon(Icons.star_rate_sharp, color: Colors.yellow[700], size: 18.sp),
        SizedBox(width: 10.w),
        Text(
          '4,5',
          style: TextStyle(color: Colors.black, fontSize: 15.sp),
        ),
      ],
    );
  }
}
