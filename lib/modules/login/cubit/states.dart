abstract class gradLoginStates {}

class LoginInitialState extends gradLoginStates {}

class LoginLoadingState extends gradLoginStates {}

class LoginSuccessState extends gradLoginStates {}

class LoginErrorState extends gradLoginStates {
  //3shan a3rd 3la el screen
  final String error;
  LoginErrorState(this.error);
}
