import 'package:flutter/material.dart';

import 'package:flutter_application_1/selectionPage/selectionPage.dart';

class Ferias extends StatefulWidget {
  const Ferias({Key? key}) : super(key: key);

  @override
  State<Ferias> createState() => _FeriasState();
}

class _FeriasState extends State<Ferias> {
  final TextEditingController valorSalario = TextEditingController();
  final TextEditingController dias = TextEditingController();
  final TextEditingController diasDeFerias = TextEditingController();
  final TextEditingController valorDeFerias = TextEditingController();
  final TextEditingController umTerco = TextEditingController();
  final TextEditingController valortotalFerias = TextEditingController();
  double valorDiasTrabalhados = 0;
  double valorDiasDeFerias = 0;
  double valorUmTerco = 0;
  double valorTotal = 0;

  String get valorFormatado => valorTotal.toStringAsFixed(2);

  void calcularValor() {
    double valor1 = double.parse(valorSalario.text);
    double valor2 = double.parse(dias.text);
    double valor3 = double.parse(diasDeFerias.text);

    setState(() {
      valorDiasTrabalhados = valor1 / valor2;
      valorDiasDeFerias = valorDiasTrabalhados * valor3;
      valorUmTerco = valorDiasDeFerias / 3;
      valorTotal = valorDiasDeFerias + valorUmTerco;

      clean();
    });
  }

  void clean() {
    valorSalario.clear();
    dias.clear();
    diasDeFerias.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 252, 246),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Calcule suas Férias ",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  "O valor das suas férias é de:  $valorFormatado" "R\$",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: valorSalario,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Adicione o Valor do seu salário",
                    labelStyle: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: dias,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Adicione os dias trabalhados ",
                    labelStyle: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: diasDeFerias,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Adicione a quantidade de dias de férias ",
                    labelStyle: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcularValor();
                    print(
                      "O seu dia de trabalho custa:  $valorFormatado" "R\$",
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(12),
                    primary: const Color.fromARGB(234, 3, 87, 243),
                  ),
                  child: const Icon(
                    Icons.play_circle_filled_sharp,
                    size: 40,
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectionPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(12),
                    primary: const Color.fromARGB(255, 252, 6, 6),
                  ),
                  child: const Text(
                    "Clique para Retornar ao menu",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
