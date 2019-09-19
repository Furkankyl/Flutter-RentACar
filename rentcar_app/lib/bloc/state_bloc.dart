
import 'dart:async';

import 'package:rentcar_app/bloc/state_provider.dart';

class StateBlock{
  StreamController animationController = StreamController();
  final StateProvider provider = StateProvider();

  Stream get animationStatus => animationController.stream;

  void toggleAnimation(){
    provider.toggleAnimationValue();
    animationController.sink.add((provider.isAnimating));
  }
  void dispose(){
    animationController.close();
  }



}  final stateBloc = StateBlock();