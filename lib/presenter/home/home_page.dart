import 'package:financa/presenter/home/home_state.dart';
import 'package:flutter/material.dart';

import '../../core/presenter/app_state.dart';
import 'components/body_home_page_components.dart';
import 'components/header_home_page_components.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends AppState<HomePage, HomePageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 184, 148, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 184, 148, 1),
        leading: Container(
          child: Icon(Icons.list),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          HeaderHomePageComponents(),
          const BodyHomePageComponents(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 60, // Largura do container
              height: 60, // Altura do container
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 184, 148, 1), // Cor de fundo
                shape: BoxShape.circle, // Forma circular
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3), // Sombra
                  ),
                ],
              ),
              child: const Icon(Icons.add,
                  size: 40,
                  color: Colors.white), // Ícone maior e com cor personalizada
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Histórico',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.amber[800],
        showSelectedLabels: true, // Mostra o rótulo apenas do item selecionado
        showUnselectedLabels:
            true, // Mostra os rótulos dos itens não selecionados
      ),
    );
  }
}
