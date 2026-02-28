import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});


@override
Widget retornarContainer(String caminho){
    return Padding(
      padding: EdgeInsets.all(16.0),
      child:  Container(
    width: 100.0, height: 100.0,
    decoration: BoxDecoration(image: DecorationImage(image: Image.asset(caminho, width: 200.0).image,
    fit: BoxFit.cover
    ),
    borderRadius: BorderRadius.all(Radius.circular(20)),
    border: Border.all(color: Colors.cyan, width: 1)
    ),
  ),
     
    );
    
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(title: Text("Galeria"),
        actions:[
          Padding(padding: EdgeInsets.all(10),
          child: Badge(
            child: Icon(Icons.inbox),
            label: Text("2"),
          ),
        ),
        ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "menu"),
        ]),
        body:Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    retornarContainer("assets/imagens/honkas.png"),
                    
                   retornarContainer("assets/imagens/genshas.jpg")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    retornarContainer("assets/imagens/genshas.jpg"),
                    retornarContainer("assets/imagens/wuthering.jpg")
                  ],
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
