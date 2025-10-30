import 'package:flutter/material.dart';
import 'package:pg_pritani/screens/cart_screen.dart';
import 'package:pg_pritani/screens/contact_screen.dart';
import 'package:pg_pritani/screens/history_screen.dart';
import 'package:pg_pritani/screens/product_screen.dart';
import 'package:pg_pritani/widgets/cards/menu_card.dart';

class MenuHomescreen extends StatelessWidget {
  const MenuHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 5,
      crossAxisSpacing: 16,
      shrinkWrap: true,
      childAspectRatio: 1.3,
      physics: NeverScrollableScrollPhysics(),
      children: [
        MenuCard(
          icon: Icons.storefront,
          label: "Produk Kami",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductScreen()),
            );
          },
        ),
        MenuCard(
          icon: Icons.shopping_bag_outlined,
          label: "Pesanan Saya",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartScreen()),
            );
          },
        ),
        MenuCard(
          icon: Icons.receipt_long,
          label: "Riwayat Transaksi",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HistoryScreen()),
            );
          },
        ),
        // MenuCard(icon: Icons.local_shipping, label: "Lacak Pengiriman"),
        MenuCard(
          icon: Icons.phone,
          label: "Hubungi Kami",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ContactScreen()),
            );
          },
        ),
      ],
    );
  }
}
