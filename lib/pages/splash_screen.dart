import 'package:flutter/material.dart';
import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(
        const Duration(seconds: 4), () {}); // Altere para 5 segundos se desejar
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 234, 203, 251), // Fundo lilás clarinho
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'lib/assets/Designer.png',
              width: 300,
              height: 300,
            ),
            const SizedBox(height: 20),
            const Text(
              'Minha Lista \n de Doramas', // Substitua pelo texto desejado
              style: TextStyle(
                fontFamily: 'IngridDarling',
                fontSize: 64,
                color: Color.fromARGB(
                    255, 0, 0, 0), // Altere a cor do texto se desejar
              ),
            ),
          ],
        ),
      ),
    );
  }
}
