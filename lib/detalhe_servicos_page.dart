// ignore_for_file: prefer_const_constructors
 
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
 
 
class DetalheServicosPage extends StatelessWidget {
 
  final Map<String, dynamic>servico;
 
  const DetalheServicosPage({super.key, required this.servico});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nome Serviço"),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.network(
            servico['fotos'][0]['imagem'],
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            servico['titulo'],
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(servico['descricao']),
          const SizedBox(
            height: 10,
          ),
          Text(
            "R\$ ${double.parse(servico['valor']).toStringAsFixed(2)}",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.orange
            ),
          ),
          const Divider(),
          Text("Endereço: ${servico['endereco']}"),
          Text("Bairro: ${servico['bairro']}"),
          Text("CEP: ${servico['cep']}"),
          Text("Telefone: ${servico['telefone']}"),
          Text("Celular: ${servico['celular']}"),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                icon: const Icon(
                  Icons.phone
                ),
                onPressed: () {},
                label: const Text(
                  "Ligar"
                ),
              ),
              ElevatedButton.icon(
                icon: FaIcon(
                  FontAwesomeIcons.whatsapp
                ),
                onPressed: () {},
                label: const Text(
                  "whatsApp"
                )
              )
            ],
          )
        ],
      ),
    );
  }
}