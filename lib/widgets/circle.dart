import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            strokeCap: StrokeCap.square,
            backgroundColor: Colors.redAccent,
            valueColor: AlwaysStoppedAnimation(Colors.green),
            strokeWidth: 10,
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
