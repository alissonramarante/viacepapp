import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:viacepapp/consulta_cep.dart';
import 'package:viacepapp/model/viacep_model.dart';
import 'package:viacepapp/repositories/viacep_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Endereços de Entrega'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            Text("Endereço, número"),
            Text("Rua"),
            Text("Bairro"),
            Text("Cidade"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const ConsultaCep())));
        },
        tooltip: 'Novo Endereço',
        child: const Icon(Icons.add),
      ),
    );
  }
}
