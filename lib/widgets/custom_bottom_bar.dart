import 'package:flutter/material.dart';
import 'package:pg_pritani/theme/app_colors.dart';

class CustomBottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.primary,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[400],
      selectedFontSize: 14,
      unselectedFontSize: 12,
      elevation: 10,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Cari"),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: "Transaksi",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Akun"),
      ],
    );
  }
}
