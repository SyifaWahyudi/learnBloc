import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit({this.initialData = 0}) : super(initialData);
  int initialData;

  int? curState;
  int? nextState;
  void tambahData() {
    emit(state + 1);
  }

  void kurang() {
    emit(state - 1);
  }

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
    curState = change.currentState;
    nextState = change.nextState;
  }
}
