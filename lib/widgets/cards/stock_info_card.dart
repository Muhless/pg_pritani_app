import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pg_pritani/theme/app_colors.dart';
import 'package:pg_pritani/widgets/stockRow.dart';

class StockInfoCard extends StatelessWidget {
  const StockInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Text(
            'Info stock',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.sp),
          // TODO: use api
          const Stockrow(
            icon: Icons.rice_bowl,
            label: 'Beras',
            value: '1000 Kg',
          ),
          const Stockrow(icon: Icons.grain, label: 'Dedak', value: '500 Kg'),
          const Stockrow(
            icon: Icons.energy_savings_leaf,
            label: 'Sekam',
            value: '2000 Kg',
          ),
        ],
      ),
    );
  }
}
