import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class MyObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('change : $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint('change : $transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('change : $bloc');
    super.onClose(bloc);
  }
}
