import 'package:flutter/material.dart';
import 'mis_paginas_tab/pantalla_principal.dart';

void main() => runApp(const MiParqueApp());

class MiParqueApp extends StatelessWidget {
  const MiParqueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jardín de las Maravillas',
      theme: ThemeData(primarySwatch: Colors.purple),
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaPrincipal(),
      },
    );
  }
}