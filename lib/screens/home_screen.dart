import 'package:flutter/material.dart';
import 'package:pg_pritani/widgets/banner_homescreen.dart';
import 'package:pg_pritani/widgets/header_homescreen.dart';
import 'package:pg_pritani/widgets/menu_homescreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final horizontalPadding = screenWidth * 0.05;
    final verticalSpacing = screenHeight * 0.03;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              children: [
                ProfileHeader(),
                SizedBox(height: verticalSpacing),
                HomescreenBanner(),
                SizedBox(height: verticalSpacing),
                MenuHomescreen(),
                SizedBox(height: verticalSpacing),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
