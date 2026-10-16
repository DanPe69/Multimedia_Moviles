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
      home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.add_ic_call)
        ),
        title: Text("Clase 3"),
        actions: [
          IconButton(
          onPressed: (){},
          icon: Icon(Icons.add_a_photo_sharp)
        ),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.add_alarm_outlined)
        ),
        ],
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
        )
      ),
    );
  }
}
