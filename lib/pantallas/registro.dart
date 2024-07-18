import 'package:flutter/material.dart';

class PantallaRegistro extends StatefulWidget {
  const PantallaRegistro({super.key});

  @override
  State<PantallaRegistro> createState() => _PantallaRegistroState();
}

class _PantallaRegistroState extends State<PantallaRegistro> {

  bool ocultarContrasenia1 = true;
  bool ocultarContrasenia2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40.0, 100.0, 40.0, 100.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text('REGISTRATE', style: 
                    TextStyle
                    (
                      color: Color.fromRGBO(24, 24, 24, 1),
                      fontSize: 20, 
                      fontWeight: FontWeight.bold
                    ),
                  ),
                SizedBox(height:55,),
                    
                //NOMBRE DE USUARIO
                Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nombre de Usuario', 
                      icon: Icon(Icons.person,size: 25,)
                    ),
                  )
                ),
                SizedBox(height:45,),
                    
                //CORREO ELECTRONICO
                Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Correo Electronico',
                      icon: Icon(Icons.email,size: 25,) 
                    ),
                  )
                ),
                SizedBox(height:45,),
                
                //TELEFONO
                Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Telefono',
                      icon: Icon(Icons.phone,size: 25,) 
                    ),
                  )
                ),
                SizedBox(height:45,),
                    
                //CONTRASEÑA 
                Form(
                  child: TextFormField(
                    obscureText: ocultarContrasenia1,
                    decoration: InputDecoration(
                      labelText: 'Contraseña', 
                      icon: Icon(Icons.key,size: 25,),
                      suffixIcon: IconButton(
                        onPressed: () {
                          ocultarContrasenia1 = !ocultarContrasenia1;
                          setState(() {
                          });
                        },
                        icon: Icon(ocultarContrasenia1?  Icons.visibility : Icons.visibility_off),
                      )
                    ),
                    
                    )
                ),
                SizedBox(height:45,),
                    
                //CONFIRMAR CONTRASEÑA
                Form(
                  child: TextFormField(
                    obscureText: ocultarContrasenia2,
                    decoration: InputDecoration(
                      labelText: 'Confirmar Contraseña',
                      icon: Icon(Icons.key,size: 25,),
                      suffixIcon: IconButton(
                        onPressed: () {
                          ocultarContrasenia2 = !ocultarContrasenia2;
                          setState(() {
                          });
                        },
                        icon: Icon(ocultarContrasenia2?  Icons.visibility : Icons.visibility_off),
                      )
                      
                    ),
                    )
                ),
                SizedBox(height:55,),
                    
                //Botones
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context,'home');
                  },
                  child: Text('Registrarse')
                  ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('iniciarSesion');
                    setState(() {                          });
                  },
                  child: Text('¿Ya tienes una cuenta?'),
                )
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
              ],
            ),
          ),
        ),
      ),
    );
  }
}
