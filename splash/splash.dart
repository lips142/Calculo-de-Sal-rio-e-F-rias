import 'package:flutter/material.dart';

import 'package:flutter_application_1/selectionPage/selectionPage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    //depois de 3 segundos carrega a proxima pagina

    Future.delayed(
      const Duration(seconds: 8),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const SelectionPage(),
          ),
        );
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      body: Center(
        child: Column(
          children: [
            Expanded(child: _getLogo()),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 40,
              width: 40,
              // ignore: prefer_const_constructors
              child: CircularProgressIndicator(
                strokeWidth: 4,
                backgroundColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Versão 1.0",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }

  _getLogo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          ("assets/img/calculation.png"),
          height: 200,
          width: 299,
        ),
        const Text(
          "Working Hours",
          style: TextStyle(
            fontSize: 35,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
