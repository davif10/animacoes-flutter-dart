import 'package:flutter/material.dart';
class AnimacaoImplicita extends StatefulWidget {
  const AnimacaoImplicita({Key? key}) : super(key: key);

  @override
  State<AnimacaoImplicita> createState() => _AnimacaoImplicitaState();
}

class _AnimacaoImplicitaState extends State<AnimacaoImplicita> {
  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            padding: EdgeInsets.all(20),
            width: _status ? 200 : 300,
            height: _status ? 300 : 200,
            color: _status ? Colors.white : Colors.purpleAccent,
            duration: Duration(seconds: 3),
            curve: Curves.easeIn,
            child: Image.asset("imagens/logo.png"),
          ),
          TextButton(
              onPressed: (){
                setState(() {
                  _status = !_status;
                });
              },
              child: Text("Alterar", style: TextStyle(fontSize: 20),))
        ],
      ),
    );
  }
}
