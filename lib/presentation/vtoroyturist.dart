// import 'package:flutter/material.dart';

// import 'package:gap/gap.dart';

// Widget second_tourist() {
//   return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12), color: Colors.white),
//       child: Padding(
//         padding:
//             const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   "Второй турист ",
//                   style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     setState(() {
//                       tourist2open = !tourist2open;
//                     });
//                   },
//                   child: Container(
//                     width: 32,
//                     height: 32,
//                     decoration: BoxDecoration(
//                         color: const Color.fromARGB(255, 231, 241, 255),
//                         borderRadius: BorderRadius.circular(6)),
//                     child: RotationTransition(
//                         turns: tourist2open
//                             ? const AlwaysStoppedAnimation(90 / 360)
//                             : const AlwaysStoppedAnimation(270 / 360),
//                         child: const Icon(
//                           Icons.arrow_back_ios_new,
//                           color: Color.fromARGB(255, 13, 114, 255),
//                         )),
//                   ),
//                 ),
//               ],
//             ),
//             tourist2open
//                 ? SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         const Gap(20),
//                         TextField(
//                           decoration: InputDecoration(
//                             focusColor: Colors.blue,
//                             hoverColor: Colors.blue,
//                             focusedBorder: OutlineInputBorder(
//                               borderSide:
//                                   const BorderSide(color: Colors.transparent),
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide:
//                                   const BorderSide(color: Colors.transparent),
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             labelText: 'Имя',
//                             labelStyle: const TextStyle(
//                               color: Color.fromARGB(255, 169, 171, 183),
//                               fontSize: 17,
//                             ),
//                             filled: true,
//                             fillColor: Colors.grey[200],
//                           ),
//                           keyboardType: TextInputType.emailAddress,
//                         ),
//                         const Gap(8),
//                         TextField(
//                           decoration: InputDecoration(
//                             focusColor: Colors.blue,
//                             hoverColor: Colors.blue,
//                             focusedBorder: OutlineInputBorder(
//                               borderSide:
//                                   const BorderSide(color: Colors.transparent),
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide:
//                                   const BorderSide(color: Colors.transparent),
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             labelText: 'Фамилия',
//                             labelStyle: const TextStyle(
//                               color: Color.fromARGB(255, 169, 171, 183),
//                               fontSize: 17,
//                             ),
//                             filled: true,
//                             fillColor: Colors.grey[200],
//                           ),
//                           keyboardType: TextInputType.emailAddress,
//                         ),
//                         const Gap(8),
//                         TextField(
//                           decoration: InputDecoration(
//                             focusColor: Colors.blue,
//                             hoverColor: Colors.blue,
//                             focusedBorder: OutlineInputBorder(
//                               borderSide:
//                                   const BorderSide(color: Colors.transparent),
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide:
//                                   const BorderSide(color: Colors.transparent),
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             labelText: 'Дата рождения',
//                             labelStyle: const TextStyle(
//                               color: Color.fromARGB(255, 169, 171, 183),
//                               fontSize: 17,
//                             ),
//                             filled: true,
//                             fillColor: Colors.grey[200],
//                           ),
//                           keyboardType: TextInputType.datetime,
//                         ),
//                         const Gap(8),
//                         TextField(
//                           decoration: InputDecoration(
//                             focusColor: Colors.blue,
//                             hoverColor: Colors.blue,
//                             focusedBorder: OutlineInputBorder(
//                               borderSide:
//                                   const BorderSide(color: Colors.transparent),
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide:
//                                   const BorderSide(color: Colors.transparent),
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             labelText: 'Гражданство',
//                             labelStyle: const TextStyle(
//                               color: Color.fromARGB(255, 169, 171, 183),
//                               fontSize: 17,
//                             ),
//                             filled: true,
//                             fillColor: Colors.grey[200],
//                           ),
//                           keyboardType: TextInputType.datetime,
//                         ),
//                         const Gap(8),
//                         TextField(
//                           decoration: InputDecoration(
//                             focusColor: Colors.blue,
//                             hoverColor: Colors.blue,
//                             focusedBorder: OutlineInputBorder(
//                               borderSide:
//                                   const BorderSide(color: Colors.transparent),
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide:
//                                   const BorderSide(color: Colors.transparent),
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             labelText: 'Номер загранпаспорта',
//                             labelStyle: const TextStyle(
//                               color: Color.fromARGB(255, 169, 171, 183),
//                               fontSize: 17,
//                             ),
//                             filled: true,
//                             fillColor: Colors.grey[200],
//                           ),
//                           keyboardType: TextInputType.datetime,
//                         ),
//                         const Gap(8),
//                         TextField(
//                           decoration: InputDecoration(
//                             focusColor: Colors.blue,
//                             hoverColor: Colors.blue,
//                             focusedBorder: OutlineInputBorder(
//                               borderSide:
//                                   const BorderSide(color: Colors.transparent),
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide:
//                                   const BorderSide(color: Colors.transparent),
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             labelText: 'Срок действия загранпаспорта',
//                             labelStyle: const TextStyle(
//                               color: Color.fromARGB(255, 169, 171, 183),
//                               fontSize: 17,
//                             ),
//                             filled: true,
//                             fillColor: Colors.grey[200],
//                           ),
//                           keyboardType: TextInputType.datetime,
//                         ),
//                       ],
//                     ),
//                   )
//                 : const Gap(0),
//           ],
//         ),
//       ));
// }
