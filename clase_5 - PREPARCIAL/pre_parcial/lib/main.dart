import 'package:flutter/material.dart';
import './widgets/post.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: 
      Scaffold(
        appBar: AppBar(
          title: Text("Clase 4"),
        ),
        body: Center(
          child: Column(
            children: [
              Post(
                User: "Pedrito",
                urlIMG: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
              ),
              Post(
                User: "Panchita",
                urlIMG: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
              ),
            ],
          )

        ListView(
          padding: EdgeInsets.all(50),
          children: [
            Column(
              children: [
                Text('Hello World!'),
                Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ]
            
            ),
          ],
          
        ),
          bottomNavigationBar: BottomNavigationBar(
            items: const[
              BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined),
              
              label: "hola",
              backgroundColor: const Color.fromARGB(255, 132, 85, 4),
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined),
              label: "hola"
              ),
              
              BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined),
              label: "hola"
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined),
              label: "hola"
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined),
              label: "hola"
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined),
              label: "hola"
              ),
            ],
            selectedItemColor: const Color.fromARGB( 255, 4, 85, 4),
            unselectedItemColor: const Color.fromARGB( 255, 255, 0, 0),

            ),
        ),
      ),
    );
  }
}
