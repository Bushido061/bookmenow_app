import 'package:flutter/material.dart';
 
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
        title: Text("BookMeNow"),
        centerTitle: true,
    backgroundColor: Colors.white,
      ),
    backgroundColor:  Colors.white,
    drawer: Drawer(
      child: ListView(
        children: const[
          SizedBox(
            height: 100,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              padding: EdgeInsets.symmetric(vertical: 30,
              horizontal: 16),
              child: Text(
                "Olá, Hudson",
               style: TextStyle(fontSize: 24,
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
    );
  }
}