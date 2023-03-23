import 'package:bloc/bloc.dart';
import 'package:counter_app/counter_app/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class counterCubit extends Cubit<CounterStates>
{
  counterCubit() : super(CounterInitialStates());

  static counterCubit get(context) => BlocProvider.of(context);

  int counter =1;

  void minus()
  {
    counter--;
    emit(CounterMinusStates(counter));
  }
  void plus()
  {
    counter++;
    emit(CounterPlusStates(counter));
  }
}