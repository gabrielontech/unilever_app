import 'package:bloc/bloc.dart';

abstract class OnBoardingDotEvent
{

}

class AddIndex extends OnBoardingDotEvent
{
  int index;
  
  AddIndex(this.index);
}

class OnBoardingDotBloc extends Bloc<OnBoardingDotEvent, int> {
  OnBoardingDotBloc() : super(0) {
    on<AddIndex>((event, emit) => emit(event.index)); // pas OnBoardingState(index: machin)
  }
}