import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> servicos = [];
  bool isloading = true;

  @override
  void initState() {
        super.initState();
        LIstaServicos();
  }

  Future <void> LIstaServicos () async {

    try{
      final  response = 
      await http.get(Uri.parse('http://10.56.45.30/public/api/servicos'));

      if(response.statusCode == 200){
          setState(() {
  servicos = json.decode(response.body);
  isloading = true;
});
      }
    }catch(e){ 
      mostrarError('Erro: $e');

     }
  }

  void mostrarError(String mensagem){
    setState(() {
      isloading = false;
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mensagem),
      ),
    );
    });
  }

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
      body: isloading 
      ? const Center(
        child: CircularProgressIndicator(),
      ) 
       :ListView.builder(
        itemCount: servicos.length,
        itemBuilder: (context, index) {
          final servico = servicos[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            color: const Color(0xFFfcfcfc),
            child: Row(
              children: [
                Image.network(
                  servico['fotos'][0]['imagem'],
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
                        'R\$ ${double.parse(servico['valor']).toStringAsFixed(2)}',
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
