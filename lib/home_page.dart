import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> servicos = [
    {
      "titulo": "Corte de cabelo",
      "descricao":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      "preco": 50.50,
      "imagem": "https://via.placeholder.com/150"
    },
    {
      "titulo": "Manicure e Pedicure",
      "descricao":
          "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
      "preco": 30,
      "imagem": "https://via.placeholder.com/150"
    },
    {
      "titulo": "Mecanico",
      "descricao":
          " It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      "preco": 65.90,
      "imagem": "https://via.placeholder.com/150"
    },
    {
      "titulo": "Aula de Informatica",
      "descricao":
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
      "preco": 160.00,
      "imagem": "https://via.placeholder.com/150"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BookMeNow"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: const [
            SizedBox(
              height: 100,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
                child: Text(
                  "Olá, Hudson",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text("Login"),
              // trailing: Icon(Icons.login),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text("Serviços"),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Dúvidas"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Sobre o BookMeNow"),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: servicos.length,
        itemBuilder: (context, index) {
          final servico = servicos[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            color: const Color(0xFFfcfcfc),
            child: Row(
              children: [
                Image.network(
                  servico['imagem'],
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        servico['titulo'],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        servico['descricao'],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'R\$ ${servico['preco'].toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
