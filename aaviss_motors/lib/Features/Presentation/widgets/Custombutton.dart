import 'package:flutter/material.dart';

class CusButton extends StatelessWidget {
  final String text;
  final Colors;
  final ontap;
  const CusButton({super.key, required this.text, this.Colors, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(border: Border.all(color: Colors)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: Colors),
        )),
      ),
    );
  }
}
