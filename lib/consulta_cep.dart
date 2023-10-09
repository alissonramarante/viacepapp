import 'package:flutter/material.dart';

class ConsultaCep extends StatefulWidget {

  const ConsultaCep({ super.key });

  @override
  State<ConsultaCep> createState() => _ConsultaCepState();
}

class _ConsultaCepState extends State<ConsultaCep> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Consulta Cep'),),
           body: Container(),
       );
  }
}