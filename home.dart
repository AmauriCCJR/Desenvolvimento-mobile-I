import 'package:flutter/material.dart';

class tela_inicial extends StatefulWidget {
  const tela_inicial({super.key});

  @override
  State<tela_inicial> createState() => _tela_inicialState();
}

class _tela_inicialState extends State<tela_inicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(195, 255, 255, 255),
      appBar: AppBar(
        actions: [
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: Icon(Icons.settings),
            ),
          ),
        ],
        title: Text("Estrutura do Scaffold"),
        backgroundColor: const Color.fromARGB(211, 108, 172, 255),
        centerTitle: true,
      ),
       body: Column(
        children: [
          //Text("Body"),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                8,
                (_) => Container(
                  width: 64,
                  height: 64,
                  margin: EdgeInsets.symmetric(horizontal: 8),

                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(child:
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(
                5,
                (_) => Container(
                  width: double.infinity,
                  height: 120,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ),
          ),
        ],
      ),

      drawer: Drawer(
        backgroundColor: Color.fromARGB(211, 108, 172, 255),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              "Drawer(Esquerda)",
              style: TextStyle(color: Colors.white, fontSize: 34),
            ),
            SizedBox(height: 20),

            Expanded(child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.vertical,
              child: Column(
                children: List.generate(
                  8,
                  (_) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          width: 160,
                          height: 34,
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: const Color.fromARGB(211, 108, 172, 255),

        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              "Drawer(Direita)",
              style: TextStyle(color: Colors.white, fontSize: 34),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.vertical,

                child: Column(
                  children: List.generate(
                    8,
                    (_) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Container(
                            width: 64,
                            height: 64,
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            width: 160,
                            height: 34,
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Pagamentos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Perfil',
          ),
        ],
      ),
      //bottomSheet: Container(height: 40, child: Text("Rodapé")),
      //floatingActionButton: FloatingActionButton(onPressed: (){}),
    );
  }
}
