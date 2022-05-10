// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Login extends StatelessWidget
{
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children:
              [
                Opacity(
                  opacity: 0.5,
                  child: ClipPath(
                    clipper: waveClipper(),
                    child: Container(
                      color: Colors.blue[900],
                      height: 150,
                    ),
                  ),
                ),
                // SafeArea(
                //   child: Container(
                //     padding: EdgeInsets.symmetric(
                //       horizontal: 20.0,
                //       vertical: 10.0,
                //     ),
                //     child: Column(
                //       children: [
                //         Image.asset(
                //           'assets/pic/solar-energy.png',
                //           width: 150.0,
                //           height: 150.0,
                //           fit: BoxFit.cover,
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(
            //     horizontal: 30.0,
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         'LOGIN',
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 35.0,
            //           color: Colors.blue[700],
            //         ),
            //       ),
            //       SizedBox(
            //         height: 40.0,
            //       ),
            //       TextFormField(
            //         controller: emailController,
            //         keyboardType: TextInputType.emailAddress,
            //         decoration: InputDecoration(
            //           labelText: 'Email Address',
            //           border: OutlineInputBorder(),
            //           prefixIcon: Icon(Icons.email),
            //         ),
            //       ),
            //       SizedBox(
            //         height: 10.0,
            //       ),
            //       TextFormField(
            //         controller: passwordController,
            //         obscureText: true,
            //         decoration: InputDecoration(
            //           labelText: 'Password',
            //           border: OutlineInputBorder(),
            //           prefixIcon: Icon(Icons.lock),
            //           suffixIcon: Icon(Icons.remove_red_eye),
            //
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(
            //     horizontal: 30.0,
            //   ),
            //   child: Row(
            //     mainAxisSize: MainAxisSize.max,
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       TextButton(
            //         onPressed: ()
            //         {
            //          print('I FORGOT MY PASSWORD');
            //         },
            //         child: Text(
            //           'forget password?',
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Row(
            //   mainAxisSize: MainAxisSize.max,
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       width: 160.0,
            //       height: 40.0,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(30.0,),
            //         gradient: LinearGradient(
            //           begin: Alignment.topRight,
            //           end: Alignment.bottomLeft,
            //           colors: [
            //             Colors.deepOrange,
            //             Colors.amber,
            //           ],
            //         ),
            //       ),
            //       child: MaterialButton(
            //         onPressed: ()
            //         {
            //           print(emailController.text);
            //           print(passwordController.text);
            //         },
            //         child: Text(
            //           'LOGIN',
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15.0,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // Row(
            //   mainAxisSize: MainAxisSize.max,
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     TextButton(
            //       onPressed: ()
            //       {
            //         print('go to register screen');
            //       },
            //       child: Text(
            //         'Don\'t have an account? Sign up ',
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 35.0,
            ),
            // Row(
            //   mainAxisSize: MainAxisSize.max,
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Material(
            //       child: GestureDetector(
            //         onTap: () {
            //           print('gmail login!!');
            //         },
            //         child: Image.asset('assets/pic/google-plus.png',
            //             width: 50.0, height: 50.0),
            //       ),
            //     ),
            //     SizedBox(width: 100.0,),
            //     Material(
            //       child: GestureDetector(
            //         onTap: () {
            //           print('facebook login!!');
            //         },
            //         child: Image.asset('assets/pic/facebook-rgb.png',
            //             width: 50.0, height: 50.0),
            //       ),
            //     ),
            //
            //   ],
            // ),

          ], //children of column
        )
    );
  }
}

//waveClipper function

class waveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height);
    //controlling point of the curve
    var firstStart = Offset(size.width/5, size.height);
    var firstEnd = Offset(size.width/2.25, size.height-50.0);
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    var secondStart = Offset(size.width - (size.width/3.24), size.height-105);
    var secondEnd = Offset(size.width, size.height-10.0);
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width,0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }

}