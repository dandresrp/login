import 'package:flutter/material.dart';

class PantallaRegistro extends StatelessWidget {
  const PantallaRegistro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Color.fromRGBO(54, 194, 206, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
            SizedBox(height: 60,),
              Text('REGISTRATE', style: TextStyle(color: Color.fromRGBO(24, 24, 24, 1), fontSize: 20, fontWeight: FontWeight.bold),)
                  
            ],
          ),
        ),
      ),
    );
  }
}