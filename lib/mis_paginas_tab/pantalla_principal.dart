import 'package:flutter/material.dart';
import 'pag1_inicio.dart';
import 'pag2_atrac_vip.dart';
import 'pag3_atrac_basicas.dart';
import 'pag4_boleto_vip.dart';
import 'pag5_boleto_general.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Jardin de las maravillas', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: const TabBarView(
          children: [
            PaginaInicio(),
            PaginaAtracVip(),
            PaginaAtracBasicas(),
            PaginaBoletoVip(),
            PaginaBoletoGeneral(),
          ],
        ),
        bottomNavigationBar: const TabBar(
          labelColor: Colors.purple,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.purpleAccent,
          isScrollable: false,
          tabs: [
            Tab(icon: Icon(Icons.home), text: 'Inicio'),
            Tab(icon: Icon(Icons.star), text: 'Atrac V'),
            Tab(icon: Icon(Icons.fort), text: 'Atrac B'),
            Tab(icon: Icon(Icons.confirmation_number), text: 'Bol Vip'),
            Tab(icon: Icon(Icons.style), text: 'Bol gen'),
          ],
        ),
      ),
    );
  }
}