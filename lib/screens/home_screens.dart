import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25.0,
            ),
            ListTile(
              // dense: true,
              minLeadingWidth: 0.0,
              horizontalTitleGap: 12.0,
              leading: const Padding(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: CircleAvatar(
                  radius: 22,
                ),
              ),
              title: const Text(
                'Hello Mahmud',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: const Text(
                'welcome Back!',
                style: TextStyle(
                  color: Colors.teal,
                ),
              ),
              trailing: Card(
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  // width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    // color: Colors.amberAccent
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.notifications_active_sharp,
                        size: 17,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.healing_outlined,
                        size: 17,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Bottom card
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // VISA logo
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 20),
                          //   child: Image.asset(
                          //     'assets/visa.png',
                          //     width: 80,
                          //     height: 40,
                          //   ),
                          // ),
                          // Card number
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              '1234 5678 9012 3456',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Roboto',
                              ),
                              textAlign: TextAlign.left,
                              // obscureText: true, // Hide the card number
                            ),
                          ),
                          // Card details
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Card holder name
                              Text(
                                'John Doe',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                ),
                                textAlign: TextAlign.left,
                              ),
                              // Expiration date
                              Text(
                                '12/25',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Top card
                  Positioned(
                    top: 0,
                    child: Container(
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Balance
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              '\$1,570.00',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Roboto',
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          // Currency
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'USD',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontFamily: 'Roboto',
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          // Card holder name
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Hassan Yousuf',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontFamily: 'Roboto',
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          // Card number
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              '1234 5678 9012 3456',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontFamily: 'Roboto',
                              ),
                              textAlign: TextAlign.left,
                              // obscureText: true, // Hide the card number
                            ),
                          ),
                          // Expiration date
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              '11/25',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontFamily: 'Roboto',
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // height: 100,
              margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blue,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        // height: 50,
                        // width: 50,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: const Icon(
                          Icons.arrow_outward,
                          // size: 30,
                          color: Colors.orange,
                        ),
                      ),
                      const Text(
                        'Send',
                      )
                    ],
                  ),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        // height: 50,
                        // width: 50,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: const Icon(
                          Icons.call_received,
                          // size: 30,
                          color: Colors.orange,
                        ),
                      ),
                      const Text(
                        'Receive',
                      )
                    ],
                  ),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        // height: 50,
                        // width: 50,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: const Icon(
                          Icons.swap_horiz,
                          // size: 3,
                          color: Colors.orange,
                        ),
                      ),
                      const Text(
                        'Swap',
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Text('Recipient'),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      radius: 23,
                      // backgroundColor: Colors.amber,
                      backgroundImage: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/128/13466/13466329.png')),
                  CircleAvatar(
                    radius: 23,
                    backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/128/3006/3006876.png'),
                  ),
                  CircleAvatar(
                    radius: 23,
                    backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/128/2922/2922561.png'),
                  ),
                  CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.black26,
                    backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/128/3001/3001785.png'),
                    child: Text(
                      '30+',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                  ),
                  CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.more_horiz,
                      size: 25,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent Activity'),
                  Text(
                    'See All',
                    style: TextStyle(color: Colors.orange),
                  )
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              color: Colors.white,
              child: ListTile(
                tileColor: Colors.transparent,
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                title: Text('Amazon Prime'),
                subtitle: Text(
                  '25 Sep 2023',
                  style: TextStyle(color: Colors.teal),
                ),
                trailing: SizedBox(
                  width: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$800.00',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '+0.3%.',
                            style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(
                            Icons.arrow_outward,
                            size: 13,
                            color: Colors.teal,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// class Card extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.center,
//       children: [
//         // Bottom card
//         Positioned(
//           bottom: 0,
//           child: Container(
//             width: 300,
//             height: 200,
//             decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(10),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.2),
//                   blurRadius: 10,
//                   spreadRadius: 5,
//                   offset: Offset(0, 5),
//                 ),
//               ],
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // VISA logo
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20),
//                   child: Image.asset(
//                     'assets/visa.png',
//                     width: 80,
//                     height: 40,
//                   ),
//                 ),
//                 // Card number
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20),
//                   child: Text(
//                     '1234 5678 9012 3456',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       fontFamily: 'Roboto',
//                     ),
//                     textAlign: TextAlign.left,
//                     obscureText: true, // Hide the card number
//                   ),
//                 ),
//                 // Card details
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     // Card holder name
//                     Text(
//                       'John Doe',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.normal,
//                         color: Colors.white,
//                         fontFamily: 'Roboto',
//                       ),
//                       textAlign: TextAlign.left,
//                     ),
//                     // Expiration date
//                     Text(
//                       '12/25',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.normal,
//                         color: Colors.white,
//                         fontFamily: 'Roboto',
//                       ),
//                       textAlign: TextAlign.left,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//         // Top card
//         Positioned(
//           top: 0,
//           child: Container(
//             width: 300,
//             height: 200,
//             decoration: BoxDecoration(
//               color: Colors.orange,
//               borderRadius: BorderRadius.circular(10),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.2),
//                   blurRadius: 10,
//                   spreadRadius: 5,
//                   offset: Offset(0, 5),
//                 ),
//               ],
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Balance
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20),
//                   child: Text(
//                     '\$1,570.00',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       fontFamily: 'Roboto',
//                     ),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 // Currency
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20),
//                   child: Text(
//                     'USD',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.white,
//                       fontFamily: 'Roboto',
//                     ),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 // Card holder name
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20),
//                   child: Text(
//                     'Hassan Yousuf',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.white,
//                       fontFamily: 'Roboto',
//                     ),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//                 // Card number
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20),
//                   child: Text(
//                     '1234 5678 9012 3456',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.white,
//                       fontFamily: 'Roboto',
//                     ),
//                     textAlign: TextAlign.left,
//                     obscureText: true, // Hide the card number
//                   ),
//                 ),
//                 // Expiration date
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20),
//                   child: Text(
//                     '11/25',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.normal,
//                       color: Colors.white,
//                       fontFamily: 'Roboto',
//                     ),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
 
 
//   }
// }

