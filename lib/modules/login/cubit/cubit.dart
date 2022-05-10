import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad/modules/login/cubit/states.dart';
import 'package:grad/network/remote/dio_helper.dart';

import '../../../network/endpoint.dart';

class gradLoginCubit extends Cubit<gradLoginStates> {
  gradLoginCubit() : super(LoginInitialState());

  static gradLoginCubit get(context) => BlocProvider.of(context);

  void userLogin({
    required String email,
    required String password,
  }) {
    emit(LoginLoadingState());
    DioHelper.postData(
      url: LOGIN,
      data: {
        'email': email,
        'password': password,
      },
    ).then((value) {
      print(value.data);
      emit(LoginSuccessState());
    }).catchError((error) {
      emit(LoginErrorState(error.toString()));
    });
  }
}
