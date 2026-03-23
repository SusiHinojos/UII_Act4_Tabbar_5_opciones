import 'package:flutter/material.dart';

class PaginaBoletoGeneral extends StatelessWidget {
  const PaginaBoletoGeneral({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Este es el boleto general', 
            style: TextStyle(fontSize: 18, color: Colors.purple, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network('https://raw.githubusercontent.com/SusiHinojos/imagenes_paraflutter_6J_Febrero_2026/refs/heads/main/boletogeneral.jpg', width: 300),
          ),
        ],
      ),
    );
  }
}