import 'package:flutter/material.dart';

class InicioSesion extends StatelessWidget {
  const InicioSesion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(209, 208, 221, 1),
            borderRadius: BorderRadius.circular(10.0)
          ),
          margin: EdgeInsets.all(30),
          padding: EdgeInsets.all(20),
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Iniciar sesión'),
              Text('Correo electrónico'),
              Form(
                child: Column(
                  children: [
                    TextFormField()
                  ],
                )
              ),
              Text('Contraseña'),
              Form(
                child: Column(
                  children: [
                    TextFormField()
                  ],
                )
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('registro');
                },
                style: TextButton.styleFrom(backgroundColor: Color.fromRGBO(69, 53, 193,1)),
                child: Text(
                  'Registrarse',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}