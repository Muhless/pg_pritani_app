import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewProduct extends StatelessWidget {
  const ReviewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ulasan',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.r),
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nama',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  decoration: TextDecoration.underline,
                ),
              ),
              Text(
                faker.lorem.sentences(3).join(' '),
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
