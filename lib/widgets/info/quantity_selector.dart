import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuantitySelector extends StatefulWidget {
  final int initialValue;
  final ValueChanged<int>? onChanged;

  const QuantitySelector({super.key, this.initialValue = 1, this.onChanged});

  @override
  State<QuantitySelector> createState() => _QuantitySelectodrState();
}

class _QuantitySelectodrState extends State<QuantitySelector> {
  late int quantity;

  @override
  void initState() {
    super.initState();
    quantity = widget.initialValue;
  }

  void increase() {
    setState(() => quantity++);
    widget.onChanged?.call(quantity);
  }

  void decrease() {
    if (quantity > 1) {
      setState(() => quantity--);
      widget.onChanged?.call(quantity);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Rp 150.000', style: TextStyle(fontSize: 18.sp)),
        Row(
          children: [
            IconButton(onPressed: decrease, icon: const Icon(Icons.remove)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Text(
                '$quantity',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(icon: const Icon(Icons.add), onPressed: increase),
          ],
        ),
      ],
    );
  }
}
