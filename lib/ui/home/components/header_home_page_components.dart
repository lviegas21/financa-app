import 'package:financa/ui/home/home_presenter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderHomePageComponents extends StatelessWidget {
  final List? meses;
  HeaderHomePageComponents({Key? key, required this.meses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = Get.find<HomePresenter>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        padding:
            const EdgeInsets.all(8), // Adiciona um pouco de padding interno
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.circular(10), // Adiciona bordas arredondadas
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Suaviza a cor da sombra
              spreadRadius: 2,
              blurRadius: 6,
              offset: Offset(0, 3), // Ajustes na sombra para um efeito elevado
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor:
                      Colors.grey[200], // Suaviza a cor do background
                  child:
                      Icon(Icons.person, color: Colors.black54), // Ícone cinza
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: presenter.selectMeses.value,
                    onChanged: (value) {
                      presenter.selectMeses.value = value!;
                    },
                    items:
                        meses!.map<DropdownMenuItem<String>>((dynamic value) {
                      return DropdownMenuItem<String>(
                        value: value["descricao"],
                        child: Center(
                          // Centraliza o texto dentro do item
                          child: Text(
                            value["descricao"],
                            style: const TextStyle(
                              color: Colors.black54, // Cor do texto
                              fontSize: 18.0, // Tamanho do texto
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                    dropdownColor: Colors.grey[200], // Cor de fundo do dropdown
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black54, // Cor do ícone de seta
                    ),
                    // Alinha o dropdown ao centro (afeta o alinhamento do botão em si, não o texto dos itens)
                    alignment: Alignment.center,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings,
                      color: Colors.black54), // Ícone cinza
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                "Balanço de saldo do mês",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                "R\$ 5.000,00",
                style: TextStyle(
                  color: Colors.black, // Torna o saldo mais proeminente
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Saldo',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "R\$ 8.000,00",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[800]),
                      ),
                    ),
                    leading: Container(
                      padding: EdgeInsets.all(
                          6), // Aumenta o espaço dentro do container
                      decoration: BoxDecoration(
                        color: Colors.green[400],
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.arrow_upward,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Despesas',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "R\$ 3.000,00",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.red[800]),
                      ),
                    ),
                    leading: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.red[400],
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.arrow_downward,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
