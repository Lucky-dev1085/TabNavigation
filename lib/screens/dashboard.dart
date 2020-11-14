import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text("Alerts"),
              Card(
                elevation: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.message),
                      Text("you have 2 new messages"),
                      MaterialButton(
                        height: 30,
                        color: Colors.blue,
                        onPressed: () {},
                        child: Text("Go to Inbox", style: TextStyle(
                          color: Colors.white
                        ),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                      )
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),

              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Container(
                        height: MediaQuery.of(context).size.height* 0.35,
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Column(
                          children: [
                            Text("3 M Bair Hugger Job"),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}