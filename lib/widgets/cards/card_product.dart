import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlue,
      borderRadius: BorderRadius.circular(16),

      child: InkWell(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Text('ini efek ripple', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
