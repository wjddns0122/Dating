// import 'package:dating/style/constant.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class MeetingDetail extends StatelessWidget {
//   const MeetingDetail({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.width * 0.8,
//             decoration: BoxDecoration(boxShadow: [
//               BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   spreadRadius: 1,
//                   blurRadius: 5,
//                   offset: const Offset(0, 8)),
//             ], color: Colors.white),
//             child: Stack(
//               children: [
//                 ClipRRect(
//                   child: Image.network(
//                     'https://search.pstatic.net/common/?src=http%3A%2F%2Fpost.phinf.naver.net%2FMjAyMjA4MTRfMjY5%2FMDAxNjYwNDQ4MjY1MDk3.r4qnANLoR1pIo12Z_ifx5BbnybxJj4cUzst521lV1IAg.0H9KKGZAE6SUFGX6GppVmT99xfecAURRBFwYs3DZWWAg.JPEG%2FINU9gQLoPGUo6mVnsdMJqz1IFoWY.jpg&type=a340',
//                     fit: BoxFit.cover,
//                     width: MediaQuery.of(context).size.width,
//                     height: MediaQuery.of(context).size.width,
//                   ),
//                 ),
//                 Positioned(
//                   left: 20,
//                   top: 40,
//                   child: IconButton(
//                     onPressed: () {
//                       Get.back();
//                     },
//                     icon: const Icon(
//                       Icons.arrow_back,
//                       color: fontColor,
//                       size: 30,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
