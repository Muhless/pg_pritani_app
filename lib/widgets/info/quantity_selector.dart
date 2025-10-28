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
  final TextEditingController _controller = TextEditingController(text: '1');

  void increase() {
    int current = int.tryParse(_controller.text) ?? 1;
    setState(() {
      _controller.text = (current + 1).toString();
    });
  }

  void decrease() {
    int current = int.tryParse(_controller.text) ?? 1;
    if (current > 1) {
      setState(() {
        _controller.text = (current - 1).toString();
      });
    }
  }

  void validateInput() {
    int current = int.tryParse(_controller.text) ?? 1;
    if (current > 1) {
      setState(() {
        _controller.text = (current - 1).toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Rp 150.000', style: TextStyle(fontSize: 17.sp)),
        Row(
          children: [
            IconButton(onPressed: decrease, icon: const Icon(Icons.remove)),
            SizedBox(
              width: 50.w,
              child: TextField(
                controller: _controller,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 8.h),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                onEditingComplete: validateInput,
                // INI MEMBUAT ANGKA AWAL '1'
                // onChanged: (value) {
                //   if (value.isEmpty ||
                //       int.tryParse(value) == null ||
                //       int.parse(value) < 1) {
                //     _controller.text = '1';
                //   }
                // },
              ),
            ),
            SizedBox(width: 4.w),
            Text(' Kg', style: TextStyle(fontSize: 14.sp)),

            IconButton(icon: const Icon(Icons.add), onPressed: increase),
          ],
        ),
      ],
    );
  }
}
