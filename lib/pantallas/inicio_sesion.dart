import 'package:flutter/material.dart';

class InicioSesion extends StatelessWidget {
  const InicioSesion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 300.0
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INICIAR SESIÓN',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0,),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      labelText: 'Correo electrónico',
                    ),
                  )
                ],
              )
            ), 
            SizedBox(height: 20.0,),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.key),
                      labelText: 'Contraseña',
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye),
                      )
                    ),
                  )
                ],
              )
            ),   
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('home');
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.indigo),
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
                  style: TextButton.styleFrom(backgroundColor: Colors.indigo),
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
    );
  }
}