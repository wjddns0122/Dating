import 'package:flutter/material.dart';

class RoomManagerProfile extends StatelessWidget {
  const RoomManagerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: width * 0.8,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 8),
          ),
        ],
        color: Colors.white,
      ),
      child: Stack(
        children: [
          ClipRRect(
            child: Image.network(
              'https://i.pinimg.com/474x/a6/24/5b/a6245bee6c4461558e293551fa463265.jpg',
              fit: BoxFit.cover,
              width: width,
              height: width,
            ),
          ),
        ],
      ),
    );
  }
}
