import 'package:flutter/material.dart';

class PantallaRegistro extends StatelessWidget {
  const PantallaRegistro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(119, 228, 200, 150),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(54, 194, 206, 60),
              borderRadius: BorderRadius.circular(10.0)
            ),
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(20),
            height: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 60,),
                Text('REGISTRATE', style: 
                  TextStyle
                  (
                    color: Color.fromRGBO(24, 24, 24, 1),
                    fontSize: 20, 
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height:55,),
                Text('Correo Electroncio', style: 
                  TextStyle
                  (
                    color: Color.fromRGBO(24, 24, 24, 1),
                    fontSize: 20, 
                    fontWeight: FontWeight.bold
                  ),
                ),
                Form(
                  child: Column(
                    children: [
                      TextFormField()
                    ],
                  )
                ),
                SizedBox(height:45,),
                Text('Nombre de Usuario', style: 
                  TextStyle
                  (
                    color: Color.fromRGBO(24, 24, 24, 1),
                    fontSize: 20, 
                    fontWeight: FontWeight.bold
                  ),
                ),
                Form(
                  child: Column(
                    children: [
                      TextFormField()
                    ],
                  )
                ),
                SizedBox(height:45,),
                Text('Contraseña', style: 
                  TextStyle
                  (
                    color: Color.fromRGBO(24, 24, 24, 1),
                    fontSize: 20, 
                    fontWeight: FontWeight.bold
                  ),
                ),
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
      ),
    );
  }
}
