import 'package:flutter/material.dart';
import 'package:login/custom_widgets.dart';

class InicioSesion extends StatefulWidget {
  const InicioSesion({super.key});

  @override
  State<InicioSesion> createState() => _InicioSesionState();
}

class _InicioSesionState extends State<InicioSesion> {
  final _formKey = GlobalKey<FormState>();
  final correoController = TextEditingController();
  final contraseniaController = TextEditingController();
  bool _mostrarContrasenia = false;

  List<Usuario> usuarios = [
    Usuario(correo: "driosp@unah.hn", contrasenia: "20212030281"),
    Usuario(correo: "robertosanchez@unah.hn", contrasenia: "20212020361"),    
  ];

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
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: correoController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      labelText: 'Correo electrónico',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese su correo electrónico';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0,),
                  TextFormField(
                    controller: contraseniaController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.key),
                      labelText: 'Contraseña',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _mostrarContrasenia = !_mostrarContrasenia;
                          });
                        },
                        icon: Icon(
                          _mostrarContrasenia ? Icons.visibility : Icons.visibility_off,
                        ),
                      )
                    ),
                    obscureText: !_mostrarContrasenia,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese su contraseña';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            bool credencialesValidas = false;
                            for (var usuario in usuarios) {
                              if (usuario.correo == correoController.text &&
                                  usuario.contrasenia == contraseniaController.text) {
                                credencialesValidas = true;
                                break;
                              }
                            }
                            if (credencialesValidas) {
                              Navigator.pushReplacementNamed(
                                context,
                                '/inicio',
                                arguments: correoController.text,
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Correo o contraseña incorrectos'))
                              );
                            }
                          }
                        },
                        style: TextButton.styleFrom(backgroundColor: Colors.indigo),
                        child: CustomTextBotones(
                          'Iniciar Sesión'
                        )
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            '/registro'
                          );
                        },
                        style: TextButton.styleFrom(backgroundColor: Colors.indigo),
                        child: CustomTextBotones(
                          'Registrarse'
                        )
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Usuario {
  String? correo;
  String? contrasenia;

  Usuario({this.correo, this.contrasenia});
}
