import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String User; 
  final String urlIMG; 

  const Post({
    super.key,
    required this.urlIMG,
    required this.User,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, 
        children: [
          Row
            (children: [
              Icon(Icons.person),
              Text('User'),
            ],
          ),
          Row(
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: Text("Follow")
              ),
                IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.people_alt_rounded)
              ),
            ],
          ),
        ],
      ),
        Image(
          image: NetworkImage(urlIMG),
        )
      ],
    );
  }
}