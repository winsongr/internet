import 'package:flutter/material.dart';

class InternetNotAvail extends StatelessWidget {
  const InternetNotAvail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//     return Container(
//       height: 20,
//       width: MediaQuery.of(context).size.width,
//       color: Colors.red,
//       child: const Center(
//         child: Text(
//           "no connection",
//           style: TextStyle(color: Colors.white, fontSize: 12),
//         ),
//       ),
//     );
//   }
// }

    return Stack(
      children: [
        Image.asset(
          'assets/18_Router Offline.png',
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.15,
          left: MediaQuery.of(context).size.width * 0.3,
          right: MediaQuery.of(context).size.width * 0.3,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 13),
                  blurRadius: 25,
                  color: Colors.black.withOpacity(0.17),
                ),
              ],
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "retry".toUpperCase(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Stack(
//         fit: StackFit.expand,
//         children: [
//           Image.asset(
//             "assets/18_Router Offline.png",
//             fit: BoxFit.cover,
//           ),
//           Positioned(
//             bottom: MediaQuery.of(context).size.height * 0.15,
//             left: MediaQuery.of(context).size.width * 0.3,
//             right: MediaQuery.of(context).size.width * 0.3,
//             child: Container(
//               decoration: BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     offset: Offset(0, 13),
//                     blurRadius: 25,
//                     color: Colors.black.withOpacity(0.17),
//                   ),
//                 ],
//               ),
//               child: FlatButton(
//                 color: Colors.white,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(50)),
//                 onPressed: () {
//                 },
//                 child: Text(
//                   "retry".toUpperCase(),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
