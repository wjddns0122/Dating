import 'package:dating/Widget/main/main_favorite.dart';
import 'package:dating/screen/main/main_favorite_screen.dart';
import 'package:flutter/material.dart';

class InterestedFriends extends StatelessWidget {
  const InterestedFriends({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '내가 관심 있는 친구',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MainFavoriteScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
