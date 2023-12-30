import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lift_test_task/feature/floors/data/floor.dart';

part 'floor_event.dart';
part 'floor_state.dart';

class FloorBloc extends Bloc<FloorEvent, FloorState> {
  FloorBloc()
      : super(FloorState(
          floors: [
            Floor(numberFloor: 1),
            Floor(numberFloor: 2),
            Floor(numberFloor: 3),
            Floor(numberFloor: 4),
            Floor(numberFloor: 5),
            Floor(numberFloor: 6),
          ],
          selectedFloor: Floor(numberFloor: 1),
          movingFloor: false,
        )) {
    on<SelectFloorEvent>((event, emit) async {
      final initialFloor = state.selectedFloor;

      for (var i = initialFloor.numberFloor; i <= event.floor.numberFloor; i++) {
        final selectedFloor = state.floors[i - 1];

        emit(FloorState(
          floors: state.floors,
          selectedFloor: selectedFloor,
          movingFloor: true,
        ));

        await Future.delayed(const Duration(seconds: 3));
      }

      emit(FloorState(
        floors: state.floors,
        selectedFloor: state.selectedFloor,
        movingFloor: false,
      ));
    });
  }
}
