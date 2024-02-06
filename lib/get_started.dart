import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
          context.go('/home');
          },
          child: Container(
            height: 100,
            width: 200,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
