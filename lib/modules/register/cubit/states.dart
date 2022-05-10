abstract class gradRegStates {}

class RegInitialState extends gradRegStates {}

class RegLoadingState extends gradRegStates {}

class RegSuccessState extends gradRegStates {}

class RegErrorState extends gradRegStates {
  //3shan a3rd 3la el screen
  final String error;
  RegErrorState(this.error);
}
