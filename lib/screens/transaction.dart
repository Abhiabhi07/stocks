import 'package:flutter/material.dart';
import 'package:stocks/widgets/custom_text.dart';
import 'package:stocks/widgets/recent_activity_list.dart';

class AllTransactionScreen extends StatelessWidget {
  AllTransactionScreen({super.key});
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      //  alignment: Alignment.center,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          // color: Colors.amber,
                          border: Border.all(
                            color: Colors.teal,
                          )),
                      child: Icon(Icons.keyboard_arrow_left),
                    ),
                    Text(
                      'All Transaction',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      // alignment: Alignment.center,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          // color: Colors.amber,
                          border: Border.all(
                            color: Colors.teal,
                          )),
                      child: Icon(
                        Icons.notification_add,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Planned Expanses',
                  style: TextStyle(
                    color: Colors.teal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: CustomText(
                    price: '5,570',
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(12.0),
                        width: 160,
                        height: 100,
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 10.0,
                          leading: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.orange[100],
                              child: Icon(
                                Icons.arrow_outward,
                                // size: 30,
                                color: Colors.orangeAccent,
                              ),
                            ),
                          ),
                          title: Text(
                            'Income',
                            style: TextStyle(
                                color: const Color.fromRGBO(0, 150, 136, 1),
                                fontSize: 12),
                          ),
                          subtitle: RichText(
                            text: TextSpan(
                                text: '\$3,200.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: '00',
                                      style: TextStyle(fontSize: 10))
                                ]),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(12.0),
                        width: 160,
                        height: 100,
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 10.0,
                          leading: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.orange[100],
                              child: Icon(
                                Icons.call_received,
                                // size: 30,
                                color: Colors.orangeAccent,
                              ),
                            ),
                          ),
                          title: Text(
                            'Income',
                            style: TextStyle(color: Colors.teal, fontSize: 12),
                          ),
                          subtitle: RichText(
                            text: TextSpan(
                                text: '\$1,750.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black),
                                children: [
                                  TextSpan(
                                      text: '00',
                                      style: TextStyle(fontSize: 10))
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                RecentActivityList(
                  scrollController: scrollController,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
