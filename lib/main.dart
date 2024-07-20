import 'package:flutter/material.dart';
import 'package:login/pantallas/inicio.dart';
import 'package:login/pantallas/registro.dart';
import 'pantallas/inicio_sesion.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget	{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: 'iniciarSesion',
        routes: {
          'iniciarSesion': (context) => InicioSesion(),
          'registro': (context) => PantallaRegistro(),
          'inicio': (context) => PantallaHome(),
        },
     );
  }
}