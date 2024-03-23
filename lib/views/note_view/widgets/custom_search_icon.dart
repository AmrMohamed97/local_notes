import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({required this.icon, super.key});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.white.withOpacity(.05),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(icon),
        ));
  }
}
