import 'package:flutter/material.dart';

class perfil_user extends StatelessWidget {
  const perfil_user({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.black87,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue.shade700
            ),
          ),
        ],
      ),
    );
  }
}