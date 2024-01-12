import 'package:dating/Widget/main/interested_friends_me_plus.dart';
import 'package:flutter/material.dart';

class InterestedMe extends StatelessWidget {
  const InterestedMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '나한테 관심 있는 친구',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainFavoriteMe()),
              );
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
