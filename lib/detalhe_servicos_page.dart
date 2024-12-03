import 'package:flutter/material.dart';

class DetalheServicosPage extends StatelessWidget {
  const DetalheServicosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nome Servico"),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset(
            "assets/mecanico.jpg",
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Titulo do Serviço",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Descrição do Serviço"),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "R\$ 20,00",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
          ),
          const Divider(),
          const Text("Endereço: Paraiba, 125"),
          const Text("Bairro: Centro"),
          const Text("CEP: 17512792"),
          const Text ("Telefone: 14-96999-8888"),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {},
               child: const Text(
                "Ligar",
               ),
               ),
               ElevatedButton(onPressed: () {}, child: const Text(
                "Whatsapp",
               )
               )
            ],
          )
        ],
      ),
    );
  }
}
