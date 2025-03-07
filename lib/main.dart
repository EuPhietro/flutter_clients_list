import 'package:flutter/material.dart';
import 'package:provider_project/pages/clients_listview.dart';
import 'package:provider_project/pages/clients_type.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const ClientsPage(),
        "/tipos": (context) => const ClientTypePage(),
      },
    );
  }
}
