import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil do Usuário',
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: const PerfilUsuarioScreen(),
    );
  }
}

class PerfilUsuarioScreen extends StatelessWidget {
  const PerfilUsuarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          Container(
            height: 140,
            width: double.infinity,
            color: Colors.blue.shade300,
          ),

         
          Center(
            child: Transform.translate(
              offset: const Offset(0, -40),
              child: CircleAvatar(
                radius: 44,
                backgroundColor: Colors.blue.shade100,
                child: Icon(Icons.person, size: 48, color: Colors.blue.shade400),
              ),
            ),
          ),

          const SizedBox(height: 4),

         
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Container(
              height: 18,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.blue.shade300,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),

          const SizedBox(height: 8),

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Container(
              height: 18,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),

          const SizedBox(height: 16),

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: List.generate(3, (index) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),

          const SizedBox(height: 16),

         
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue.shade200),
                ),
                padding: const EdgeInsets.all(12),
                
              ),
            ),
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
