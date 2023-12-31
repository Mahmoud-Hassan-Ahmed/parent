part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ToggleHidePasswordEvent extends LoginEvent {
  final bool state;

  ToggleHidePasswordEvent(this.state);
  @override
  List<Object?> get props => [state];
}
