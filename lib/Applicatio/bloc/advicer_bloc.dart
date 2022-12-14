import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerInitial()) {
    Future sleep1() async {
      return Future.delayed(
        const Duration(seconds: 2),
        () => "ladeteeetettettetee",
      );
    }

    on<AdviceRequestedEvent>((event, emit) async {
      emit(AdvicerStateLoading());
      await sleep1();
      // get advice
      emit(AdvicerStateLoaded(advice: "test advice"));
    });
    on<ExampleEvent>((event, emit) {});
  }
}
