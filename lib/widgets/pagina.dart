import 'package:flutter/material.dart';


class StackHome extends StatefulWidget {
  const StackHome({super.key});

  @override
  State<StatefulWidget> createState() => _StackHomeState();
}

class _StackHomeState extends State<StackHome> {
  static const heading = '\$589,000';
  static const subheading = '1499 Galenia Rd, Austin,TX,USA';
  static const cardImage =
      NetworkImage('https://source.unsplash.com/random/800x600?house');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: const Icon(Icons.close,color: Colors.black),
        title: const Text("1499 Galenia Road", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
        actions: const [
          IconButton(
            onPressed: null, 
            icon: Icon(Icons.keyboard_arrow_up),
            iconSize: 40,color: 
            Colors.black,
            ),
          IconButton(
            onPressed: null, 
            icon: Icon(Icons.keyboard_arrow_down),
            iconSize: 40,color: 
            Colors.black,),
        ],
      ),

      body: Card(
        elevation: 4.0,
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              child: Ink.image(
                image: cardImage,
                fit: BoxFit.cover,
               ),
            ),

            const ListTile(
              title: Text(heading),
              subtitle: Text(subheading),
            ),
          ],
        ),
      ),
    );
  }
}
