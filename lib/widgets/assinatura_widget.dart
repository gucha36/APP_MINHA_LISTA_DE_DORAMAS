// lib/widgets/assinatura_widget.dart
import 'package:flutter/material.dart';

class AssinaturaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 16.0), // Espaçamento inferior
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          'Developed by Ariana',
          style: TextStyle(
            fontFamily: 'IngridDarling',
            fontSize: 24,
            color: Colors.black54, // Altere a cor se necessário
          ),
        ),
      ),
    );
  }
}
