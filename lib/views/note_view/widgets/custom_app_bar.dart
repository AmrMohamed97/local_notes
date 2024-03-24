import 'package:flutter/material.dart';
import 'package:local_notes_app/views/note_view/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({required this.title, required this.icon, super.key, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
          ),
        ),
        const Spacer(),
        CustomSearchIcon(icon: icon, onPressed:onPressed ),
      ],
    );
  }
}
