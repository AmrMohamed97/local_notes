import 'package:flutter/material.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton(
      {super.key,
      this.height,
      this.width,
      required this.label,
      this.radius,
      this.onTap,
      this.horizontalPadding,
      this.verticalPadding,
      this.color});
  final String label;
  final double? width, height, radius, horizontalPadding, verticalPadding;
  final VoidCallback? onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: verticalPadding ?? 0, horizontal: horizontalPadding ?? 0),
        height: height ?? 60,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 0),
          color: color ?? Colors.blue,
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
