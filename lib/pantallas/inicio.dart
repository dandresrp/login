import 'package:flutter/material.dart';
import 'package:login/custom_widgets.dart';

class PantallaHome extends StatelessWidget {
  const PantallaHome({super.key});

  @override
  Widget build(BuildContext context) {
    final String correo = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
        body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.indigo.shade300,
              Colors.indigo.shade900
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.home,
                size: 80,
                color: Colors.white,
              ),
              SizedBox(height: 20),
              CustomTextTitulos('Bienvenido!'),
              SizedBox(height: 10,),
              CustomTextTitulos(correo),
            ],
          ),
        ),
      ),
    );
  }
}