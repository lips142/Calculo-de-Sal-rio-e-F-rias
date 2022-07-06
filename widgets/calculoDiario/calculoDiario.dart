import 'package:flutter/material.dart';
import 'package:flutter_application_1/selectionPage/selectionPage.dart';

class CalculoDiario extends StatefulWidget {
  const CalculoDiario({Key? key}) : super(key: key);

  @override
  State<CalculoDiario> createState() => _CalculoDiario();
}

class _CalculoDiario extends State<CalculoDiario> {
  final TextEditingController valorSalario = TextEditingController();
  final TextEditingController dias = TextEditingController();
  double valorTotal = 0;
  String get valorFormatado => valorTotal.toStringAsFixed(2);

  void calcularValor() {
    double valor1 = double.parse(valorSalario.text);
    double valor2 = double.parse(dias.text);

    setState(() {
      valorTotal = valor1 / valor2;

      clean();
    });
  }

  void clean() {
    valorSalario.clear();
    dias.clear();
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
                  "Calcule seus Ganhos Já!",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 243, 171, 2),
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  "O seu dia de trabalho custa:  $valorFormatado" "R\$",
                  style: const TextStyle(
                    fontSize: 23,
                    color: Color.fromARGB(255, 66, 173, 39),
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
                ElevatedButton(
                  onPressed: () {
                    calcularValor();
                    print(
                      "O seu dia de trabalho custa:  $valorFormatado" "R\$",
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(12),
                    primary: const Color.fromARGB(255, 247, 185, 0),
                  ),
                  child: const Icon(
                    Icons.play_circle_filled_sharp,
                    size: 40,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
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
                    primary: Color.fromARGB(255, 255, 3, 3),
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
