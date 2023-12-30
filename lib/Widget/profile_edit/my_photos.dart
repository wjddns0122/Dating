import 'package:flutter/material.dart';

class MyPhotos extends StatelessWidget {
  const MyPhotos({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width * 0.33,
      height: width * 0.33,
      child: ClipRRect(
        child: Image.network(
          'https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202301/19/SpoHankook/20230119052512141eivc.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
