import 'package:flutter/material.dart';

class PantallaRegistro extends StatelessWidget {
  const PantallaRegistro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Registrate'),
      //   centerTitle: true,
      // ),

      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          color: Color.fromRGBO(119, 228, 200, 150),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(54, 194, 206, 60),
                borderRadius: BorderRadius.circular(10.0)
              ),

              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(20),
              height: 1000,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Divider(color: Colors.white,),
                    Text('REGISTRATE', style: 
                      TextStyle
                      (
                        color: Color.fromRGBO(24, 24, 24, 1),
                        fontSize: 20, 
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Divider(color: Colors.white,),
                  SizedBox(height:55,),

                  //NOMBRE DE USUARIO
                  Row(
                    children: const [
                      Icon(Icons.person),
                      SizedBox(width: 5,),
                      Text('Nombre de Usuario', style: 
                        TextStyle              
                        (
                          color: Color.fromRGBO(24, 24, 24, 1),
                          fontSize: 15, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Form(
                    child: TextFormField()
                  ),
                  SizedBox(height:45,),

                  //CORREO ELECTRONICO
                  Row(
                    children: const [
                      Icon(Icons.mail),
                      SizedBox(width: 5,),
                      Text('Correo Electronico', style: 
                        TextStyle
                        (
                          color: Color.fromRGBO(24, 24, 24, 1),
                          fontSize: 15, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Form(
                    child: TextFormField()
                  ),
                  SizedBox(height:45,),
                  
                  //TELEFONO
                  Row(
                    children: const [
                      Icon(Icons.phone),
                      SizedBox(width: 5,),
                      Text('Telefono', style: 
                        TextStyle
                        (
                          color: Color.fromRGBO(24, 24, 24, 1),
                          fontSize: 15, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Form(
                    child: TextFormField()
                  ),
                  SizedBox(height:45,),

                  //CONTRASEÑA 
                  Row(
                    children: const [
                      Icon(Icons.password),
                      SizedBox(width: 5,),
                      Text('Contraseña', style: 
                        TextStyle
                        (
                          color: Color.fromRGBO(24, 24, 24, 1),
                          fontSize: 15, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Form(
                    child: TextFormField(obscureText: true,)
                  ),
                  SizedBox(height:45,),

                  //CONFIRMAR CONTRASEÑA
                  Row(
                    children: const [
                      Icon(Icons.password),
                      SizedBox(width: 5,),
                      Text('Confirmar Contraseña', style: 
                        TextStyle
                        (
                          color: Color.fromRGBO(24, 24, 24, 1),
                          fontSize: 15, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Form(
                    child: TextFormField(obscureText: true)
                  ),SizedBox(height:45,),
                  SizedBox(height:55,),

                  //Botones
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('home');
                        },
                        child: Text('Registrarse')
                        ),
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('iniciarSesion');
                        },
                        child: Text('¿Ya tienes una cuenta?'),
                      )
                    ],
                  )















                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
