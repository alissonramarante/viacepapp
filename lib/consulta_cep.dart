import 'package:flutter/material.dart';

class ConsultaCep extends StatefulWidget {

  const ConsultaCep({ super.key });

  @override
  State<ConsultaCep> createState() => _ConsultaCepState();
}

class _ConsultaCepState extends State<ConsultaCep> {

   @override
   Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final cepEC = TextEditingController();
    String endereco = '';
    String bairro = '';
    String cidade = '';
    String estado = '';
       return Scaffold(
           appBar: AppBar(title: const Text('Consulta Cep'),),
           body: Form(
            
            key: formKey,
             child: Padding(
              padding: EdgeInsets.all(16),
               child: Column(
                
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      label: Text('CEP'),
             
                      
                    ),
                        controller: cepEC,
                      ),
                    Text(endereco),
                    Text(bairro),
                    Text(cidade),
                    Text(estado),
                ],
               ),
             ),
           ),
       );
  }
}

/**
          
          
 * final viaCepRepository = ViacepRepository();
          final result = viaCepRepository.buscarCep(cepEC.text);
          endereco = result.logradouro;
          bairro = result.bairro;
          cidade = result.localidade;
          estado = result.uf;
          setState(() {
            
          });
 */