import 'dart:io';
import 'package:flutter/material.dart';

class HamburgerMenu extends StatelessWidget {
  const HamburgerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.indigo),
            child: Text(
              'Menu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            title: const Text('Gerenciar clientes'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/');
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Tipos de clientes'),
            onTap: () {
              Navigator.popAndPushNamed(context, '/tipos');
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Sair'),
            onTap: () {
              exit(0);
            },
          ),
        ],
      ),
    );
  }
}
