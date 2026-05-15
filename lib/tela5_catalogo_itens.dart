import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catálogo de Itens',
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: const CatalogoItensScreen(),
    );
  }
}

class CatalogoItensScreen extends StatelessWidget {
  const CatalogoItensScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 48, 12, 12),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blue.shade200),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    alignment: Alignment.centerLeft,

                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    
                  ),
                 
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(6, (index) {
                    return Container(
                      width: (MediaQuery.of(context).size.width - 44) / 2,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 24,
                            width: double.infinity,
                            
                            color: Colors.blue.shade300,
                          ),
                          
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),

         
          Container(
            height: 56,
            color: Colors.blue.shade50,
            alignment: Alignment.center,
            
          ),
        ],
      ),
    );
  }
}
