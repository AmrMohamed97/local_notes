import 'package:flutter/material.dart';
import 'package:local_notes_app/views/notes_view.dart';
import 'package:local_notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
