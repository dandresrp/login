import 'package:flutter/material.dart';

class InicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Color.fromRGBO(119, 228, 200,1),
          margin: EdgeInsets.all(30),
          padding: EdgeInsets.all(30),
          height: 300,
          child: Column(
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