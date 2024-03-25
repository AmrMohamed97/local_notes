import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_notes_app/views/note_view/manager/add_note_cubit.dart';
import 'package:local_notes_app/views/note_view/manager/add_note_state.dart';
import 'package:local_notes_app/views/note_view/widgets/color_list_view.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            BlocProvider.of<AddNoteCubit>(context)
                .assignColor(colors[index].value);
            BlocProvider.of<AddNoteCubit>(context).select(index);
          },
          child: BlocProvider.of<AddNoteCubit>(context).pressed != index
              ? CircleAvatar(
                  radius: 35,
                  backgroundColor: colors[index],
                )
              : CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: colors[index],
                  ),
                ),
        );
      },
    );
  }
}
