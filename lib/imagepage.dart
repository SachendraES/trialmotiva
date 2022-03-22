import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Image.network(
            'https://drive.google.com/uc?export=view&id=1SPCpcdAqyKm0RlKdP87zj8zjHOq4MLBx'),
      ),
    );
  }
}
