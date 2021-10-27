import 'package:bloc/bloc.dart';

abstract class OnBoardingDotEvent{}

class AddIndex extends OnBoardingDotEvent{
  int index = 0;

  AddIndex(this.index);
}

class OnBoardingDotBloc extends Bloc<OnBoardingDotEvent, int>
{
    OnBoardingDotBloc() : super(0) {

    _updateIndex(AddIndex event, Emitter<int> emit) => emit(event.index);
    on<AddIndex>(_updateIndex); 
  }
}