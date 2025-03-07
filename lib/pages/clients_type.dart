import 'package:flutter/material.dart';
import 'package:provider_project/componets/hamburgue_menu.dart';
import 'package:provider_project/models/client_model.dart';
import 'package:provider_project/models/client_type.dart';

class ClientTypePage extends StatefulWidget {
  const ClientTypePage({super.key});

  @override
  State<ClientTypePage> createState() => _ClientTypePageState();
}

class _ClientTypePageState extends State<ClientTypePage> {
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
      ),
      drawer: const HamburgerMenu(),

      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height/3,
        color: Colors.red,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
