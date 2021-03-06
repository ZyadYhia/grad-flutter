import 'package:flutter/material.dart';

const TWO_PI = 3.14 * 2;

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = 200.0;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Progress Indicator"),
        ),
        body:Center(
          // This Tween Animation Builder is Just For Demonstration, Do not use this AS-IS in Projects
          // Create and Animation Controller and Control the animation that way.
          child: TweenAnimationBuilder(
            tween: Tween(begin: 0.0,end: 1.0),
            duration: Duration(seconds: 4),
            builder: (context,value,child){
              return Container(
                width: size,
                height: size,
                child: Stack(
                  children: [
                    ShaderMask(
                      shaderCallback: (rect){
                        return SweepGradient(
                            startAngle: 0.0,
                            endAngle: 3.14 * 2,
                            stops: [0.5,0.5],
                            // 0.0 , 0.5 , 0.5 , 1.0
                            center: Alignment.center,
                            colors: [Colors.blue,Colors.greenAccent.withAlpha(55)]
                        ).createShader(rect);
                      },
                      child: Container(
                        width: size,
                        height: size,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: Image.asset("assets/pic/radial_scale.png").image)
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: size-40,
                        height: size-40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
