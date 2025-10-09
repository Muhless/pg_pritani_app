import 'package:flutter/material.dart';
import 'package:pg_pritani/widgets/banner_homescreen.dart';
import 'package:pg_pritani/widgets/header_homescreen.dart';
import 'package:pg_pritani/widgets/menu_homescreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              ProfileHeader(),
              SizedBox(height: 30),
              HomescreenBanner(),
              SizedBox(height: 30),
              MenuHomescreen(),
            ],
          ),
        ),
      ),
    );
  }
}
