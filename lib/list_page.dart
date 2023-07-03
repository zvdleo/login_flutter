import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final List<Map<String, String>> itemList = [
    {
      'image': 'assets/images/login.png',
      'title': 'Item 1',
      'description': 'Descrição do item 1',
    },
    {
      'image': 'assets/images/login2.png',
      'title': 'Item 2',
      'description': 'Descrição do item 2',
    },
    {
      'image': 'assets/images/login3.png',
      'title': 'Item 3',
      'description': 'Descrição do item 3',
    },
    {
      'image': 'assets/images/login4.png',
      'title': 'Item 4',
      'description': 'Descrição do item 4',
    },
    {
      'image': 'assets/images/login5.png',
      'title': 'Item 5',
      'description': 'Descrição do item 4',
    },
    {
      'image': 'assets/images/login6.png',
      'title': 'Item 6',
      'description': 'Descrição do item 4',
    },
    {
      'image': 'assets/images/login7.png',
      'title': 'Item 7',
      'description': 'Descrição do item 4',
    },
    {
      'image': 'assets/images/login8.png',
      'title': 'Item 8',
      'description': 'Descrição do item 4',
    },
    {
      'image': 'assets/images/login9.png',
      'title': 'Item 9',
      'description': 'Descrição do item 4',
    },
    {
      'image': 'assets/images/login10.png',
      'title': 'Item 10',
      'description': 'Descrição do item 4',
    },                          
    // Adicione os outros itens da lista
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300], // Defina a cor de fundo como cinza (grey)
        centerTitle: true, // Centralizar o título
        title: const Text(
          'Contacts', // Altere "Listagem" para "Contacts"
        ),
      ),
      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(itemList[index]['image']!),
              radius: 25, // Defina o raio desejado para o avatar
            ),
            title: Text(itemList[index]['title']!),
            subtitle: Text(itemList[index]['description']!),
          );
        },
      ),
    );
  }
}

