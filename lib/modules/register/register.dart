// ignore_for_file: prefer_const_constructors
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:grad/modules/login/login_screen.dart';
import 'package:grad/main.dart';
import 'package:grad/modules/register/api_reg.dart';
import 'package:grad/modules/register/cubit/cubit.dart';
import 'package:grad/network/remote/dio_helper.dart';

class register extends StatefulWidget {
  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  // var passConfirmController = TextEditingController();
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  // _reg(){
  //   print('1');
  //   var data = {
  //     'name': nameController.text,
  //     'email': emailController.text,
  //     'password': passwordController.text,
  //     'password_confirmation': passConfirmController.text,
  //     'role':'student',
  //   };
  //   print('2');
  //
  //   var response = CallApi().postData(data);
  //   print(response);
  //   print('3');
  //   var body = jsonDecode(response.data);
  //   print('4');
  //   if (body['success']) {
  //     Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHome()));
  //
  //   }
  //
  // }

  // Future<void> _handleRegister() async {
  //   if (formKey.currentState!.validate()) {
  //     //show snackbar to indicate loading
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: const Text('Processing Data'),
  //       backgroundColor: Colors.green.shade300,
  //     ));
  //
  //     //the user data to be sent
  //     Map<String, dynamic> data = {
  //       "Email": [
  //         {
  //           "Type": "Primary",
  //           "Value": emailController.text,
  //         }
  //       ],
  //       "Password": passwordController.text,
  //       "About": 'I am a new user :smile:',
  //       "FirstName": "Test",
  //       "LastName": "Account",
  //       "BirthDate": "10-12-1985",
  //       "Gender": "M",
  //     };
  //
  //     //get response from ApiClient
  //     dynamic res = await DioHelper.registerUser(data);
  //     ScaffoldMessenger.of(context).hideCurrentSnackBar();
  //
  //     //checks if there is no error in the response body.
  //     //if error is not present, navigate the users to Login Screen.
  //     if (res['ErrorCode'] == null) {
  //       Navigator.push(context,
  //           MaterialPageRoute(builder: (context) => LoginScreen()));
  //     } else {
  //       //if error is present, display a snackbar showing the error messsage
  //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //         content: Text('Error: ${res['Message']}'),
  //         backgroundColor: Colors.red.shade300,
  //       ));
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Stack(
            children: [
              Image.asset('assets/pic/top1.png'),
              Image.asset('assets/pic/top2.png'),
              SafeArea(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/pic/solar-energy.png',
                        width: 150.0,
                        height: 150.0,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'REGISTER',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.blue[700],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  //name
                  TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.alternate_email),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'username CAN NOT be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  //email
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email CAN NOT be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  //password
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      // suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password CAN NOT be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    controller: phoneController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'phone number',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.dialpad),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'phone CAN NOT be empty';
                      }
                      return null;
                    },
                  ),
                  // TextFormField(
                  //   controller: passwordController,
                  //   obscureText: true,
                  //   decoration: InputDecoration(
                  //     labelText: 'Confirm Password',
                  //     border: OutlineInputBorder(),
                  //     prefixIcon: Icon(Icons.lock),
                  //     // suffixIcon: Icon(Icons.remove_red_eye),
                  //   ),
                  //   validator: (value) {
                  //     if (value!.isEmpty) {
                  //       return 'Password CAN NOT be empty';
                  //     }
                  //     return null;
                  //   },
                  // ),
                  SizedBox(
                    height: 25.0,
                  ),

                  Center(
                    child: Container(
                      width: 160.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          30.0,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.deepOrangeAccent,
                            Colors.amber,
                          ],
                        ),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            gradRegCubit.get(context).userReg(
                                  name: nameController.text,
                                  email: emailController.text,
                                  password: passwordController.text,
                                  phone: phoneController.text,
                                );
                          }
                          print('post');
                          // _reg();
                          // _handleRegister();
                        },
                        child: Text(
                          'REGISTER',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text(
                        'Already have an account',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ], //children of column
      ),
    ));
  }
}
