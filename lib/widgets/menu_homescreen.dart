import 'package:flutter/material.dart';
import 'package:pg_pritani/widgets/menu_card.dart';

class MenuHomescreen extends StatelessWidget {
  const MenuHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      shrinkWrap: true,
      // childAspectRatio: 1.4,
      physics: NeverScrollableScrollPhysics(),
      children: [
        MenuCard(icon: Icons.storefront, label: "Produk Kami"),
        // MenuCard(icon: Icons.attach_money, label: "Promo & Harga"),
        MenuCard(icon: Icons.shopping_bag_outlined, label: "Pesanan Saya"),
        MenuCard(icon: Icons.receipt_long, label: "Riwayat Transaksi"),
        // MenuCard(icon: Icons.local_shipping, label: "Lacak Pengiriman"),
        MenuCard(icon: Icons.phone, label: "Hubungi Kami"),
      ],
    );
  }
}
