import 'package:flutter/material.dart';

class InicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iniciar Sesión'),
        backgroundColor: Colors.amber.shade300,
      ),
      body: Center(
        child: Container(
          color: Colors.grey.shade200,
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
            ],
          ),
        ),
      ),
    );
  }
}