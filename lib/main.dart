import 'package:flutter/material.dart';
import 'list_page.dart';
import 'login_page.dart';
import 'sobre_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/list': (context) => ListPage(),
        '/sobre': (context) => const SobrePage(), // Adicione esta linha para a rota da página "sobre_page.dart"
      },
    );
  }
}

