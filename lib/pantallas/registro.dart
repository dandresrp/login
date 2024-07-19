import 'package:flutter/material.dart';

class PantallaRegistro extends StatefulWidget {
  const PantallaRegistro({super.key});

  @override
  State<PantallaRegistro> createState() => _PantallaRegistroState();
}

class _PantallaRegistroState extends State<PantallaRegistro> {

  bool ocultarContrasenia1 = true;
  bool ocultarContrasenia2 = true;
  final formkey = GlobalKey<FormState>();
  final usuariocontroller = TextEditingController();
  final correocontroller = TextEditingController();
  final telefonocontroller = TextEditingController();
  final contrasenia1controller = TextEditingController();
  final contrasenia2controller = TextEditingController();

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

                Form(
                  key: formkey,
                  child: Column(
                    children: [

                      //NOMBRE DE USUARIO
                      TextFormField(
                        controller: usuariocontroller,
                        validator: (value) {
                          if(value==null || value.isEmpty || value.trim().isEmpty)
                          {
                            return('El nombre de usuario de obligatorio');
                          }
                          if(value.length < 3 )
                          {
                            return('El nombre de usuario muy corto');
                          }
                          if(value.length > 20)
                          {
                            return('El nombre de usuario muy largo');
                          }
                          return null;},

                        decoration: InputDecoration(
                          labelText: 'Nombre de Usuario', 
                          icon: Icon(Icons.person,size: 25,),
                          errorText: null,
                        ),
                      ),
                      SizedBox(height:45,),
                          
                      //CORREO ELECTRONICO
                      TextFormField(
                        controller: correocontroller,
                        validator: (value) {
                          if(value == null || value.isEmpty || value.trim().isEmpty)
                          {
                            return('El Correo Electrónico es obligatorio');
                          }
                          if( !RegExp(r'^[^@]+@unah.hn').hasMatch(value))
                          {
                            return('Correo no valido. (@unah.hn)');
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Correo Electrónico',
                          icon: Icon(Icons.email,size: 25,) 
                        ),
                      ),
                      SizedBox(height:45,),
                      
                      //TELEFONO
                      TextFormField(
                        controller: telefonocontroller,
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if(value == null || value.isEmpty || value.trim().isEmpty)
                          {
                            return('El Teléfono es obligatorio');
                          }
                          if (!RegExp(r'^(3|9)').hasMatch(value))
                          {
                            return 'Debe empezar con 3 o 9';
                          }
                          if( value.length == 8 )
                          {
                            return null; 
                          }else{
                            return('Teléfono no valido. Ejem.(54545454)');
                          }
                          
                        },
                        decoration: InputDecoration(
                          labelText: 'Teléfono (+504)',
                          icon: Icon(Icons.phone,size: 25,),
                        ),
                      ),
                      SizedBox(height:45,),
                          
                      //CONTRASEÑA 
                      TextFormField(
                        controller: contrasenia1controller,
                        obscureText: ocultarContrasenia1,
                        validator: (value){
                          if (value == null || value.isEmpty) 
                          {
                            return 'Por favor ingrese una contraseña';
                          } else 
                          if (value.length < 8) 
                          {
                            return 'Debe tener al menos 8 caracteres';
                          } else 
                          if (!RegExp(r'^(?=.*[a-z])').hasMatch(value))
                          {
                            return 'Debe contener al menos una letra minúscula';
                          } else 
                          if (!RegExp(r'^(?=.*[A-Z])').hasMatch(value)) 
                          {
                            return 'Debe contener al menos una letra mayúscula';
                          } else if (!RegExp(r'^(?=.*\d)').hasMatch(value)) 
                          {
                            return 'Debe contener al menos un número';
                          } else if (!RegExp(r'^(?=.*[!@#\$%\^&\*])').hasMatch(value)) 
                          {
                            return 'Debe contener al menos un carácter especial';
                          }
                          return null;
                        },
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
                        
                        ),
                      SizedBox(height:45,),
                          
                      //CONFIRMAR CONTRASEÑA
                      TextFormField(
                        controller: contrasenia2controller,
                        obscureText: ocultarContrasenia2,
                        validator: (value) {
                          if(contrasenia1controller.text == contrasenia2controller.text )
                          {
                            return null;
                          }else{
                            return('las contraseñas no concuerdan');
                          }
                        },
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
                        ),
                      SizedBox(height:55,),
                    ],
                  ),
                ),
                    
                //Botones
                ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.pushReplacementNamed(context,'registro');
                       final datos = {
                          'nombre': usuariocontroller.text,
                          'correo': correocontroller.text,
                          'telefono': telefonocontroller.text,
                          'contrasenia': contrasenia1controller.text,
                        };
                        // ignore: avoid_print
                        print(datos);
                    }  
                    
                  },
                  child: Text('Registrarse')
                  ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('iniciarSesion');
                    setState(() {});
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
