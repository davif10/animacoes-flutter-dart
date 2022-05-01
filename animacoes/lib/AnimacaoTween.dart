import 'package:flutter/material.dart';

class AnimacaoTween extends StatefulWidget {
  const AnimacaoTween({Key? key}) : super(key: key);

  @override
  State<AnimacaoTween> createState() => _AnimacaoTweenState();
}

class _AnimacaoTweenState extends State<AnimacaoTween> {
  static final colorTween = ColorTween(begin: Colors.white, end: Colors.orange);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TweenAnimationBuilder(
            duration: Duration(seconds: 2),
            tween: colorTween,
            child: Image.asset("imagens/estrelas.jpg"),
            builder: (BuildContext context, Color? color, Widget? widget) {
              return ColorFiltered(
                colorFilter: ColorFilter.mode(color!, BlendMode.overlay),
                child: widget,
              );
            },
          )
          // child: TweenAnimationBuilder(
          //   duration: Duration(seconds: 1),
          //   tween: Tween<double>(begin: 50, end:  180),
          //   builder: (BuildContext context, double value, Widget? widget) {
          //     return Container(
          //       color: Colors.green,
          //       width: value,
          //       height: 60
          //     );
          //   },
          // )
        // child: TweenAnimationBuilder(
        //   duration: Duration(seconds: 2),
        //   builder: (BuildContext context, double value, Widget? widget) {
        //     return Transform.rotate(
        //       angle: value,
        //       child: Image.asset("imagens/logo.png"),
        //     );
        //   },
        //   tween: Tween<double>(begin: 0, end:  6.28),
        // ),
      ),
    );
  }
}
