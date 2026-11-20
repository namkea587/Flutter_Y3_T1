import 'package:flutter/material.dart';

List<String> images = [
  "lib/START-CODE/EX-3/assets/bird.jpg",
  "lib/START-CODE/EX-3/assets/bird2.jpg",
  "lib/START-CODE/EX-3/assets/insect.jpg",
  "lib/START-CODE/EX-3/assets/girl.jpg",
  "lib/START-CODE/EX-3/assets/man.jpg",
];

class ButtonIcon extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback action;
  const ButtonIcon({
    super.key,
    required this.label,
    required this.icon,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(tooltip: label, icon: Icon(icon), onPressed: action);
  }
}
class HomeScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int imageIndex = 0;
  void prevImage() {
    setState(() {
      imageIndex = (imageIndex - 1) % images.length;
    });
  }

  void nextImage() {
    setState(() {
      imageIndex = (imageIndex + 1) % images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          ButtonIcon(
            icon: Icons.navigate_before,
            label: 'Go previous image',
            action: prevImage,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: ButtonIcon(
              icon: Icons.navigate_next,
              label: 'Go next image',
              action: nextImage,
            ),
          ),
        ],
      ),
      body: Image.asset(images[imageIndex]),
    );
  }
}

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()));
