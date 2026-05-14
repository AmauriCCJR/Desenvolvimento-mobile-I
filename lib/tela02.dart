import 'package:flutter/material.dart';

class galeria_horizontal extends StatefulWidget {
  const galeria_horizontal({super.key});

  @override
  State<galeria_horizontal> createState() => _galeria_horizontalState();
}

class _galeria_horizontalState extends State<galeria_horizontal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 31),
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
        title: Text("Galeria Horizontal"),
        backgroundColor: const Color.fromARGB(211, 108, 172, 255),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Expanded(
              child: Row(
                children: List.generate(
                  9,
                  (_) => Container(
                    width: 128,
                    height: 128,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: List.generate(
                  1,
                  (_) => Container(
                    width: double.infinity,
                    height: 40,
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
          
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              children: List.generate(
                4,
                (_) => Container(
                  width: double.infinity,
                  height: 80,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
