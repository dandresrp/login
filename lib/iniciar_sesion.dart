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
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Iniciar sesión',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              Divider(color: Colors.transparent,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('Correo electrónico'),
                ],
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField()
                  ],
                )
              ),
              Divider(color: Colors.transparent,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('Contraseña'),
                ],
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField()
                  ],
                )
              ),
              Divider(color: Colors.transparent,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('registro');
                    },
                    style: TextButton.styleFrom(backgroundColor: Color.fromRGBO(69, 53, 193,1)),
                    child: Text(
                      'Iniciar Sesión',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}