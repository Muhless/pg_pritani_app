import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.lightBlue,
          ),
          clipBehavior: Clip.antiAlias,
          child: ClipOval(
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/icons/businessman.png'),
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),

        SizedBox(width: 12.h),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Halo",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey.withValues(alpha: 0.8),
                height: 1.0,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Admin",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                height: 1.0,
              ),
            ),
          ],
        ),
        const Spacer(),
        Icon(
          Icons.notifications_none_outlined,
          weight: 200,
          color: Colors.black,
          size: 35,
        ),
      ],
    );
  }
}
