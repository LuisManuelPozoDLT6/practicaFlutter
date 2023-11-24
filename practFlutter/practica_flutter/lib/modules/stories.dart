import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: CircleAvatar(
        radius: 50.0,
        backgroundImage: AssetImage(image),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
        ),
      ),
    );
  }
}
