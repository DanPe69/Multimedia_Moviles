import 'package:flutter/material.dart';
import './wigdets/card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        backgroundColor: Colors.blueAccent,

        //BARRA SUPERIOR
        appBar: AppBar(

          // Parte 1
          leading: IconButton( 
            onPressed: (){}, 
            icon: Icon(Icons.abc_outlined)),
            backgroundColor: const Color.fromARGB(255, 4, 34, 132),

            //Parte 2
            title: const Text("Title"), 

            centerTitle: true,

            // Parte 3
            actions: [ 
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.add_a_photo_sharp)
            ),
            ],

            ),
            

        // CONTENIDO PRINCIPAL
        body: Center(
          child: ListView(
            padding: const EdgeInsets.all(10),

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text("Y", style: TextStyle(color: Colors.white)
                    ),
                  ),
                  Column(
                  children: [
                    Text('Hello World!'),
                    Text('Hello World!'), 
                    Row(
                      

                    )                   
                  ],
                  )                  
                ],
              
              ),
              
              Column(
              children: [
              Post(
                User: "Finn",
                urlIMG: "https://static.wikia.nocookie.net/horadeaventura/images/f/f3/Original_Finn.png/revision/latest/scale-to-width/360?cb=20130212000456&path-prefix=es",
              ),
              Post(
                User: "Jake",
                urlIMG: "https://static.wikia.nocookie.net/horadeaventura/images/f/fb/JakeRJS.png/revision/latest/scale-to-width-down/1200?cb=20140526012014&path-prefix=es",
              ),
              Post(
                User: "Jake",
                urlIMG: "https://static.wikia.nocookie.net/horadeaventura/images/f/fb/JakeRJS.png/revision/latest/scale-to-width-down/1200?cb=20140526012014&path-prefix=es",
              ),
          ],
        )




            ],

            

          )
          
          
          
          ),
        

        

        // MENÚ INFERIOR       
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined), 
              label: 'Title',
              backgroundColor: const Color.fromARGB(255, 132, 85, 4),

              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined), 
              label: 'Title'
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined), 
              label: 'Title'
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined), 
              label: 'Title'
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined), 
              label: 'Title'
              ),
          ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          
        ),
      ),
    );
  }
}
