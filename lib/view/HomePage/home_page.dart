import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          color: Colors.red,
                          child: Text(
                            "Where Are we",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      Container(
                          color: Colors.red,
                          child: Text(
                            "Going Next  ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                  Expanded(child: Container())
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
