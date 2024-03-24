import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_notes_app/manager/add_note_cubit.dart';
import 'package:local_notes_app/manager/add_note_state.dart';
import 'package:local_notes_app/views/note_view/widgets/add_notes_form.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteLoadingState) {
          } else if (state is AddNoteSuccessState) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text(
                'Note add success',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green,
            ));
            Navigator.of(context).pop();
          } else if (state is AddNoteErrorState) {
            showDialog(
                context: context,
                builder: (context) {
                  return Center(
                    child: Container(
                      padding: const EdgeInsets.all(50),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            state.error.toString(),
                            style: const TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CupertinoButton(
                              color: Colors.blue,
                              child: const Text(
                                'cancel',
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              })
                        ],
                      ),
                    ),
                  );
                });
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoadingState ? true : false,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(child: AddNotesForm()),
            ),
          );
        },
      ),
    );
  }
}
