import 'package:flutter/material.dart';

class listcard extends StatefulWidget {
  const listcard({super.key});

  @override
  State<listcard> createState() => _listcardState();
}

class _listcardState extends State<listcard> {
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
         title: Text("Lista de Cards"),
         centerTitle: true,
         backgroundColor: Colors.blue
      ),
      body: ListView.builder(
        
        itemCount: 8,
        itemBuilder: (context, index) {
          return Card(
            
            child: Row(
              children: [
                SingleChildScrollView(scrollDirection: Axis.vertical,
                
                child: Column(children: [
                   Container(
                  width: 64,
                  height: 64,
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                ],),),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Título"), Text("Subtitulo")],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
