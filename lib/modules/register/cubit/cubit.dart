import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad/modules/login/cubit/states.dart';
import 'package:grad/modules/register/cubit/states.dart';
import 'package:grad/network/remote/dio_helper.dart';

import '../../../network/endpoint.dart';

class gradRegCubit extends Cubit<gradRegStates>
{
  gradRegCubit() : super(RegInitialState());

  static  gradRegCubit get(context) => BlocProvider.of(context);

  void userReg({
    required String name,
    required String email,
    required String password,
    required String phone,

  })
  {
    emit(RegLoadingState());
    DioHelper.postData(
      url: REG,
      data:{
        'email':email,
        'password':password,
      },
    ).then((value) {
      print(value.data);
      emit(RegSuccessState());
    }).catchError((error)
    {
      emit(RegErrorState(error.toString()));
    });
  }



}