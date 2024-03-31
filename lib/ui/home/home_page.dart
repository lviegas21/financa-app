import 'package:financa/ui/home/components/body_home_page_gastos_components.dart';
import 'package:financa/ui/home/components/header_home_page_components.dart';
import 'package:financa/ui/home/home_presenter.dart';
import 'package:flutter/material.dart';

import '../../domain/enum/meses_enum.dart';

class HomePage extends StatelessWidget {
  HomePresenter homepresenter;
  HomePage({super.key, required this.homepresenter});

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List meses = EnumMeses.values
        .map((e) => {"id": e.id, "descricao": e.descricao})
        .toList();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          HeaderHomePageComponents(
            meses: meses,
          ),
          BodyHomePageGastosComponents()
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
                color: Colors.blue, // Cor de fundo
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        showSelectedLabels: true, // Mostra o rótulo apenas do item selecionado
        showUnselectedLabels:
            true, // Mostra os rótulos dos itens não selecionados
      ),
    );
  }
}
