import 'package:flutter/material.dart';

class AnimacoesExplicitasConstruidas extends StatefulWidget {
  const AnimacoesExplicitasConstruidas({Key? key}) : super(key: key);

  @override
  State<AnimacoesExplicitasConstruidas> createState() => _AnimacoesExplicitasConstruidasState();
}

class _AnimacoesExplicitasConstruidasState extends State<AnimacoesExplicitasConstruidas> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  AnimationStatus? _animationStatus;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(seconds: 5)
    )..repeat()..addStatusListener((status) {
      _animationStatus = status;
    });
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 300,
            height: 400,
            child: RotationTransition(
              alignment: Alignment.center,
              turns: _animationController,
              child: Image.asset("imagens/logo.png"),
            ),
          ),

          TextButton(
              onPressed: (){
                if(_animationStatus == AnimationStatus.dismissed){
                  _animationController.forward();
                }else{
                  _animationController.reverse();
                }

                // if(_animationController.isAnimating){
                //   _animationController.stop();
                // }else{
                //   _animationController.repeat();
                // }
              },
              child: Text("Pressione"))
        ],
      ),
    );
  }
}
