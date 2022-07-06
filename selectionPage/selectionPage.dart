// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_application_1/widgets/calculoDiario/calculoDiario.dart';
import 'package:flutter_application_1/widgets/calculoFerias/ferias.dart';

class SelectionPage extends StatelessWidget {
  const SelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 252, 246),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0.8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "                 Bem vindo!! \n\n Selecione o Serviço Desejado:",
                style: TextStyle(
                  color: Color.fromARGB(255, 187, 141, 3),
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CalculoDiario(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(12),
                  primary: const Color.fromARGB(255, 247, 185, 0),
                ),
                child: Text(
                  "Calcular Salário",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Ferias(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(12),
                  primary: const Color.fromARGB(255, 247, 185, 0),
                ),
                child: Text(
                  "Calcular Férias",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
