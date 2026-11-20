import 'package:flutter/material.dart';

class FavouriteCard extends StatefulWidget {
  final String title;
  final String description;
  const FavouriteCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  State<FavouriteCard> createState() => _FavouriteCardState();
}

class _FavouriteCardState extends State<FavouriteCard> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.brown.shade300)),
      ),
      // YOUR CODE
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title, style: TextStyle(color: Colors.blue[300])),
                const SizedBox(height: 5),
                Text(widget.description, style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                isFavourite = !isFavourite;
              });
            },
            icon: Icon(
              Icons.heart_broken,
              color: isFavourite ? Colors.red : Colors.grey.shade100,
            ),
          ),
        ],
      ),
    );
  }
}

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Favorite cards"),
      ),
      body: Column(
        children: [
          FavouriteCard(title: 'Flutter', description: 'I love Flutter'),
          FavouriteCard(title: 'Capstone', description: 'I love Capstone'),
          FavouriteCard(title: 'Game Dev', description: 'I love Game Dev'),
        ],
      ),
    ),
  ),
);
