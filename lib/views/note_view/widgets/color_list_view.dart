import 'package:flutter/material.dart';
import 'package:local_notes_app/views/note_view/widgets/color_item.dart';

List colors = [
  Colors.purple,
  Colors.brown,
  Colors.blueGrey,
  Colors.teal,
  Colors.lightBlueAccent,
  Colors.lightGreenAccent,
  Colors.orangeAccent,
  Colors.redAccent,
  Colors.limeAccent,
];

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsetsDirectional.only(start: 12.0),
        child: ColorItem(index: index),
      ),
      itemCount: colors.length,
    );
  }
}
