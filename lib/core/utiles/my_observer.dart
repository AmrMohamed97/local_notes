import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class MyObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    debugPrint('open : $bloc');
    super.onCreate(bloc);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('change : $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint('transition : $transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('close : $bloc');
    super.onClose(bloc);
  }
}
