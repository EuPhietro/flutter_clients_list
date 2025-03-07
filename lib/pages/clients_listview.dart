import 'package:flutter/material.dart';
import 'package:provider_project/componets/hamburgue_menu.dart';
import 'package:provider_project/models/client_model.dart';
import 'package:provider_project/models/client_type.dart';

class ClientsPage extends StatefulWidget {
  const ClientsPage({super.key});

  @override
  State<ClientsPage> createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {
  List<Client> clients = [
    Client(
      name: 'Geraldo',
      email: 'leo@email.com',
      type: ClientType(name: 'Platinum', icon: Icons.credit_card),
    ),
    Client(
      name: 'Paulo',
      email: 'leo@email.com',
      type: ClientType(name: 'Golden', icon: Icons.card_membership),
    ),
    Client(
      name: 'Caio',
      email: 'leo@email.com',
      type: ClientType(name: 'Titanium', icon: Icons.credit_score),
    ),
    Client(
      name: 'Ruan',
      email: 'ruan@email.com',
      type: ClientType(name: 'Diamond', icon: Icons.diamond),
    ),
  ];

  List<ClientType> types = [
    ClientType(name: 'Platinum', icon: Icons.credit_card),
    ClientType(name: 'Golden', icon: Icons.card_membership),
    ClientType(name: 'Titanium', icon: Icons.credit_score),
    ClientType(name: 'Diamond', icon: Icons.diamond),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ClientsPage",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.indigo,
      ),
      drawer: const HamburgerMenu(),
      body: ListView.builder(
        itemCount: clients.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            background: Container(
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Icon(Icons.delete, color: Colors.white)],
                ),
              ),
            ),
            child: ListTile(
              leading: Icon(clients[index].type.icon),
              title: Text(clients[index].name),
              subtitle: Text(clients[index].email),
              trailing: Icon(Icons.arrow_right),
            ),
            onDismissed: (direction) => clients.removeAt(index),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createType(context);
        },
        backgroundColor: Colors.indigo,
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

void createType(context) {
  TextEditingController nameController = TextEditingController();
  TextEditingController gmailController = TextEditingController();

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        scrollable: true,
        backgroundColor: Colors.grey,
        title: Text("Adicionar cliente"),
        content: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  label: Text("Nome"),
                  helper: Text.rich(
                    TextSpan(
                      text: 'Informativos:\n',

                      children: [
                        TextSpan(text: '1- Iniciais em maiúsculo\n'),
                        TextSpan(text: '2- Espaços simples entre palavras'),
                      ],
                    ),
                  ),
                ),
                autocorrect: true,
                style: TextStyle(color: Colors.black),
              ),
              Padding(padding: EdgeInsets.all(8)),
            ],
          ),
        ),
      );
    },
  );
}
