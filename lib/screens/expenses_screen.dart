import 'package:flutter/material.dart';
import 'package:stocks/widgets/custom_text.dart';
import 'package:stocks/widgets/recent_activity_list.dart';

class ExpensesScreen extends StatelessWidget {
  ExpensesScreen({super.key});
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: scrollController,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
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
                          Icons.search_outlined,
                          size: 17,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.notification_add,
                          size: 17,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Planned Expanses',
                style: TextStyle(
                  color: Colors.teal,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: RichText(
                  text: TextSpan(
                      text: '\$5,570.',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black),
                      children: [
                        TextSpan(text: '00', style: TextStyle(fontSize: 10))
                      ]),
                ),
              ),
              // Loader(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                height: 120,
                // width: MediaQuery.of(context).size.width,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        // height: 110,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          // color: Colors.amber,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(10.0),
                        // height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                            color: Colors.redAccent),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Housing'),
                            CustomText(price: '3,570'),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 2.0),
                              decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Text(
                                '70%',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            )
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(10.0),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                            color: Colors.blueAccent),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Food'),
                            CustomText(price: '990'),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 2.0),
                              decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Text(
                                '70%',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            )
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(10.0),
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                            color: Colors.pink[100]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Housing'),
                            CustomText(price: '455'),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 2.0),
                              decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Text(
                                '70%',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
              Text('My Income'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(12.0),
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        // color: Colors.amber,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.orange[100],
                                child: Icon(Icons.money),
                              ),
                              Text('Salary'),
                              Icon(Icons.more_horiz)
                            ],
                          ),
                          CustomText(
                            price: '2,770',
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(12.0),
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        // color: Colors.amber,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.orange[100],
                                child: Icon(Icons.money),
                              ),
                              Text('Interest'),
                              Icon(Icons.more_horiz)
                            ],
                          ),
                          CustomText(
                            price: '560',
                            color: Colors.black,
                          ),
                        ],
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
    );
  }
}
