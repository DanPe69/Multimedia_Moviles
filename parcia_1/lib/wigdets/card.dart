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
        Image(
          image: NetworkImage(urlIMG),
        ),

        Column(
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('User'),
              Icon(Icons.person),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('User'),
              Text('Mi nombre'),
            ],
          )
        ],
        ),

        
      ],
    );
  }
}