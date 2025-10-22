import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pg_pritani/widgets/banner_homescreen.dart';
import 'package:pg_pritani/widgets/cards/delivery_status_card.dart';
import 'package:pg_pritani/widgets/cards/stock_info_card.dart';
import 'package:pg_pritani/widgets/header_homescreen.dart';
import 'package:pg_pritani/widgets/menu_homescreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              children: [
                ProfileHeader(),
                SizedBox(height: 16.h),
                HomescreenBanner(),
                SizedBox(height: 16.h),
                MenuHomescreen(),
                SizedBox(height: 16.h),
                DeliveryStatusCard(),
                SizedBox(height: 16.h),
                StockInfoCard(),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
