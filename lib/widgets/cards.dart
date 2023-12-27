import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
