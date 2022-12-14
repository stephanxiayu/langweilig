part of 'advicer_bloc.dart';

@immutable
abstract class AdvicerEvent {}

/// event when Button is pressed
class AdviceRequestedEvent extends AdvicerEvent {}

class ExampleEvent extends AdvicerEvent {}
