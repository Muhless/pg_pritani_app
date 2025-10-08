import 'package:flutter/material.dart';
import 'package:pg_pritani/screens/transaction_screen.dart';

class HomescreenBanner extends StatelessWidget {
  const HomescreenBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.lightBlue,
      ),
      child: Row(
        children: [
          Image.asset('assets/images/farmer.png', width: 180),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Kualitas Beras Dimulai dari",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Penggilingan yang Tepat",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TransactionScreen(),
                      ),
                    );
                  },
                  child: Text("Pesan Sekarang"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
