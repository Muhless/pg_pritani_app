import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveryStatusCard extends StatelessWidget {
  const DeliveryStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle productTextStyle = TextStyle(
      fontSize: 15.sp,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.underline,
    );

    return DefaultTextStyle(
      style: TextStyle(color: Colors.black87),
      child: Container(
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          color: Colors.white,
          // border: Border.all(color: Colors.lightBlueAccent, width: 1.5.w),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Status Pengiriman',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.h),
            Align(
              alignment: AlignmentGeometry.center,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        // TODO: Get data from API
                        'Beras Pandan Wangi - 100 Kg',
                        style: productTextStyle,
                      ),
                    ],
                  ),
                  Text(
                    'Dalam Pengiriman',
                    style: TextStyle(color: Colors.blue, fontSize: 15.sp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
