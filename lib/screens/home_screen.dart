import 'package:flutter/material.dart';
import 'package:pg_pritani/widgets/homescreen_banner.dart';
import 'package:pg_pritani/widgets/profile_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ProfileHeader(),
              SizedBox(height: 30),
              HomescreenBanner(),
            ],
          ),
        ),
      ),
    );
  }
}
