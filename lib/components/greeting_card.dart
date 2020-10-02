import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GreetingCard extends StatelessWidget {
  final String username;

  GreetingCard({this.username});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: Card(
        color: DateTime.now().hour < 17 ? Colors.blue : Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Good ${DateTime.now().hour < 17 ? 'Morning' : 'Evening'}, ${this.username}',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            // SizedBox(
            //   width: double.infinity,
            //   height: 300,
            //   child: Image.network(
            //     'https://healthruwords.com/wp-content/uploads/2014/10/inspirational-pictures-Seeds-of-Wind-300x300.jpg',
            //     fit: BoxFit.cover,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
