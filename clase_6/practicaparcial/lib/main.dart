import 'package:flutter/material.dart';
import './widgets/card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          
          title: Text("Wireframe Parcial"),
          actions: <Widget>[
            
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.abc)
            )
          ],
        ),


        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [NewCard(), NewCard(), NewCard(),],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [NewCard(), NewCard(), NewCard(),],
            ),
          ],

        ),


        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), 
            label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
          ],
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.cyanAccent,
        ),
      ),
    );
  }
}
