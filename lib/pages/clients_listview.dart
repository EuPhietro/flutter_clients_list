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
        backgroundColor: Colors.amber,
        leading: const HamburgerMenu(),
      ),
      body: ListView.builder(
        itemCount: clients.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            background: Container(
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Icon(Icons.delete, color: Colors.white,)],
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
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
