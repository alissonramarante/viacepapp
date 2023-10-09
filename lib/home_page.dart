import 'package:flutter/material.dart';
import 'package:viacepapp/consulta_cep.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final cepEC = TextEditingController();
    String endereco = '';
    String bairro = '';
    String cidade = '';
    String estado = '';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Endereços'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: ListView(
          children: [
            Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    controller: cepEC,
                  ),
                  Text(endereco),
                  Text(bairro),
                  Text(cidade),
                  Text(estado),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        tooltip: 'Novo Endereço',
        child: const Icon(Icons.add),
      ),
    );
  }
}
